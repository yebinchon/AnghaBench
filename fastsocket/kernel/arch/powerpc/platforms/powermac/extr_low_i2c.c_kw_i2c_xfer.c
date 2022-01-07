
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct pmac_i2c_host_kw {int speed; scalar_t__ irq; int* data; int len; scalar_t__ state; int result; int rw; int lock; int complete; TYPE_1__ timeout_timer; int polled; } ;
struct pmac_i2c_bus {int mode; int channel; int polled; struct pmac_i2c_host_kw* hostdata; } ;


 int EINVAL ;
 int INIT_COMPLETION (int ) ;
 int KW_I2C_CTL_XADDR ;
 int KW_I2C_IRQ_MASK ;
 int KW_I2C_MODE_COMBINED ;
 int KW_I2C_MODE_MODE_MASK ;
 int KW_I2C_MODE_STANDARD ;
 int KW_I2C_MODE_STANDARDSUB ;
 scalar_t__ KW_POLL_TIMEOUT ;
 scalar_t__ NO_IRQ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int kw_i2c_handle_interrupt (struct pmac_i2c_host_kw*,int) ;
 int kw_i2c_wait_interrupt (struct pmac_i2c_host_kw*) ;
 int kw_read_reg (int ) ;
 int kw_write_reg (int ,int) ;




 int reg_addr ;
 int reg_control ;
 int reg_ier ;
 int reg_isr ;
 int reg_mode ;
 int reg_status ;
 int reg_subaddr ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ state_addr ;
 scalar_t__ state_idle ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int kw_i2c_xfer(struct pmac_i2c_bus *bus, u8 addrdir, int subsize,
         u32 subaddr, u8 *data, int len)
{
 struct pmac_i2c_host_kw *host = bus->hostdata;
 u8 mode_reg = host->speed;
 int use_irq = host->irq != NO_IRQ && !bus->polled;


 switch(bus->mode) {
 case 130:
  return -EINVAL;
 case 129:
  mode_reg |= KW_I2C_MODE_STANDARD;
  if (subsize != 0)
   return -EINVAL;
  break;
 case 128:
  mode_reg |= KW_I2C_MODE_STANDARDSUB;
  if (subsize != 1)
   return -EINVAL;
  break;
 case 131:
  mode_reg |= KW_I2C_MODE_COMBINED;
  if (subsize != 1)
   return -EINVAL;
  break;
 }


 kw_write_reg(reg_isr, kw_read_reg(reg_isr));
 kw_write_reg(reg_mode, mode_reg | (bus->channel << 4));
 kw_write_reg(reg_status, 0);




 kw_write_reg(reg_addr, addrdir & 0xff);


 if ((mode_reg & KW_I2C_MODE_MODE_MASK) == KW_I2C_MODE_STANDARDSUB
     || (mode_reg & KW_I2C_MODE_MODE_MASK) == KW_I2C_MODE_COMBINED)
  kw_write_reg(reg_subaddr, subaddr);


 host->data = data;
 host->len = len;
 host->state = state_addr;
 host->result = 0;
 host->rw = (addrdir & 1);
 host->polled = bus->polled;




 if (use_irq) {

  INIT_COMPLETION(host->complete);

  kw_write_reg(reg_isr, kw_read_reg(reg_isr));

  host->timeout_timer.expires = jiffies + KW_POLL_TIMEOUT;
  add_timer(&host->timeout_timer);

  kw_write_reg(reg_ier, KW_I2C_IRQ_MASK);
 }


 kw_write_reg(reg_control, KW_I2C_CTL_XADDR);


 if (use_irq)
  wait_for_completion(&host->complete);
 else {
  while(host->state != state_idle) {
   unsigned long flags;

   u8 isr = kw_i2c_wait_interrupt(host);
   spin_lock_irqsave(&host->lock, flags);
   kw_i2c_handle_interrupt(host, isr);
   spin_unlock_irqrestore(&host->lock, flags);
  }
 }


 kw_write_reg(reg_ier, 0);

 return host->result;
}
