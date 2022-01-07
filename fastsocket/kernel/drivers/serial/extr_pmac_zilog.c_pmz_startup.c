
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct TYPE_5__ {int irq; } ;
struct uart_pmac_port {int* curregs; TYPE_3__* dev; TYPE_1__ port; int flags; int * node; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_7__ {TYPE_2__ ofdev; } ;


 int EAGAIN ;
 int ENODEV ;
 int ENXIO ;
 int EXT_INT_ENAB ;
 int INT_ALL_Rx ;
 int IRQF_SHARED ;
 int PMACZILOG_FLAG_IS_IRQ_ON ;
 int PMACZILOG_FLAG_IS_OPEN ;
 size_t R1 ;
 int TxINT_ENAB ;
 scalar_t__ ZS_IS_ASLEEP (struct uart_pmac_port*) ;
 int ZS_IS_CONS (struct uart_pmac_port*) ;
 int ZS_IS_EXTCLK (struct uart_pmac_port*) ;
 scalar_t__ ZS_IS_IRDA (struct uart_pmac_port*) ;
 int __pmz_startup (struct uart_pmac_port*) ;
 int dev_err (int *,char*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmz_debug (char*,...) ;
 TYPE_4__* pmz_get_port_A (struct uart_pmac_port*) ;
 int pmz_interrupt ;
 int pmz_irda_reset (struct uart_pmac_port*) ;
 int pmz_irq_mutex ;
 int pmz_set_scc_power (struct uart_pmac_port*,int ) ;
 scalar_t__ request_irq (int ,int ,int ,char*,struct uart_pmac_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_pmac_port* to_pmz (struct uart_port*) ;
 int write_zsreg (struct uart_pmac_port*,size_t,int) ;

__attribute__((used)) static int pmz_startup(struct uart_port *port)
{
 struct uart_pmac_port *uap = to_pmz(port);
 unsigned long flags;
 int pwr_delay = 0;

 pmz_debug("pmz: startup()\n");

 if (ZS_IS_ASLEEP(uap))
  return -EAGAIN;
 if (uap->node == ((void*)0))
  return -ENODEV;

 mutex_lock(&pmz_irq_mutex);

 uap->flags |= PMACZILOG_FLAG_IS_OPEN;




 if (!ZS_IS_CONS(uap)) {
  spin_lock_irqsave(&port->lock, flags);
  pwr_delay = __pmz_startup(uap);
  spin_unlock_irqrestore(&port->lock, flags);
 }

 pmz_get_port_A(uap)->flags |= PMACZILOG_FLAG_IS_IRQ_ON;
 if (request_irq(uap->port.irq, pmz_interrupt, IRQF_SHARED, "PowerMac Zilog", uap)) {
  dev_err(&uap->dev->ofdev.dev,
   "Unable to register zs interrupt handler.\n");
  pmz_set_scc_power(uap, 0);
  mutex_unlock(&pmz_irq_mutex);
  return -ENXIO;
 }

 mutex_unlock(&pmz_irq_mutex);




 if (pwr_delay != 0) {
  pmz_debug("pmz: delaying %d ms\n", pwr_delay);
  msleep(pwr_delay);
 }


 if (ZS_IS_IRDA(uap))
  pmz_irda_reset(uap);


 spin_lock_irqsave(&port->lock, flags);
 uap->curregs[R1] |= INT_ALL_Rx | TxINT_ENAB;
 if (!ZS_IS_EXTCLK(uap))
  uap->curregs[R1] |= EXT_INT_ENAB;
 write_zsreg(uap, R1, uap->curregs[R1]);
        spin_unlock_irqrestore(&port->lock, flags);

 pmz_debug("pmz: startup() done.\n");

 return 0;
}
