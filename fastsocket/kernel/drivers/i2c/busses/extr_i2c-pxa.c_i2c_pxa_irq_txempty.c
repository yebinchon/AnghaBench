
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pxa_i2c {int msg_ptr; scalar_t__ msg_idx; int msg_num; int* icrlog; int irqlogidx; TYPE_1__* msg; } ;
struct TYPE_2__ {int len; int* buf; int flags; } ;


 int BUS_ERROR ;
 int I2C_M_NOSTART ;
 int I2C_RETRY ;
 int ICR_ACKNAK ;
 int ICR_ALDIE ;
 int ICR_START ;
 int ICR_STOP ;
 int ICR_TB ;
 int ISR_ACKNAK ;
 int ISR_ALD ;
 int ISR_BED ;
 int ISR_RWM ;
 int XFER_NAKED ;
 int _ICR (struct pxa_i2c*) ;
 int _IDBR (struct pxa_i2c*) ;
 int i2c_pxa_addr_byte (TYPE_1__*) ;
 int i2c_pxa_master_complete (struct pxa_i2c*,int) ;
 int i2c_pxa_reset (struct pxa_i2c*) ;
 int i2c_pxa_scream_blue_murder (struct pxa_i2c*,char*) ;
 int readl (int ) ;
 int show_state (struct pxa_i2c*) ;
 int writel (int,int ) ;

__attribute__((used)) static void i2c_pxa_irq_txempty(struct pxa_i2c *i2c, u32 isr)
{
 u32 icr = readl(_ICR(i2c)) & ~(ICR_START|ICR_STOP|ICR_ACKNAK|ICR_TB);

 again:



 if (isr & ISR_ALD) {




  i2c_pxa_scream_blue_murder(i2c, "ALD set");







  return;
 }

 if (isr & ISR_BED) {
  int ret = BUS_ERROR;






  if (isr & ISR_ACKNAK) {
   if (i2c->msg_ptr == 0 && i2c->msg_idx == 0)
    ret = I2C_RETRY;
   else
    ret = XFER_NAKED;
  }
  i2c_pxa_master_complete(i2c, ret);
 } else if (isr & ISR_RWM) {




  if (i2c->msg_ptr == i2c->msg->len - 1 &&
      i2c->msg_idx == i2c->msg_num - 1)
   icr |= ICR_STOP | ICR_ACKNAK;

  icr |= ICR_ALDIE | ICR_TB;
 } else if (i2c->msg_ptr < i2c->msg->len) {



  writel(i2c->msg->buf[i2c->msg_ptr++], _IDBR(i2c));

  icr |= ICR_ALDIE | ICR_TB;





  if (i2c->msg_ptr == i2c->msg->len &&
      i2c->msg_idx == i2c->msg_num - 1)
   icr |= ICR_STOP;
 } else if (i2c->msg_idx < i2c->msg_num - 1) {



  i2c->msg_ptr = 0;
  i2c->msg_idx ++;
  i2c->msg++;






  if (i2c->msg->flags & I2C_M_NOSTART)
   goto again;




  writel(i2c_pxa_addr_byte(i2c->msg), _IDBR(i2c));




  icr &= ~ICR_ALDIE;
  icr |= ICR_START | ICR_TB;
 } else {
  if (i2c->msg->len == 0) {





   i2c_pxa_reset(i2c);
  }
  i2c_pxa_master_complete(i2c, 0);
 }

 i2c->icrlog[i2c->irqlogidx-1] = icr;

 writel(icr, _ICR(i2c));
 show_state(i2c);
}
