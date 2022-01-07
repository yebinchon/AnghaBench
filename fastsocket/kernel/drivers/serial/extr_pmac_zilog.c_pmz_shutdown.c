
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct TYPE_3__ {int irq; } ;
struct uart_pmac_port {int* curregs; int mate; int flags; TYPE_1__ port; int * node; } ;
struct TYPE_4__ {int flags; } ;


 int EXT_INT_ENAB ;
 int PMACZILOG_FLAG_IS_IRQ_ON ;
 int PMACZILOG_FLAG_IS_OPEN ;
 size_t R1 ;
 size_t R3 ;
 size_t R5 ;
 int RxENABLE ;
 int RxINT_MASK ;
 int SND_BRK ;
 int TxENABLE ;
 int TxINT_ENAB ;
 scalar_t__ ZS_IS_ASLEEP (struct uart_pmac_port*) ;
 scalar_t__ ZS_IS_CONS (struct uart_pmac_port*) ;
 int ZS_IS_OPEN (int ) ;
 int free_irq (int ,struct uart_pmac_port*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pmz_debug (char*) ;
 TYPE_2__* pmz_get_port_A (struct uart_pmac_port*) ;
 int pmz_irq_mutex ;
 int pmz_maybe_update_regs (struct uart_pmac_port*) ;
 int pmz_set_scc_power (struct uart_pmac_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_pmac_port* to_pmz (struct uart_port*) ;
 int write_zsreg (struct uart_pmac_port*,size_t,int) ;
 int zssync (struct uart_pmac_port*) ;

__attribute__((used)) static void pmz_shutdown(struct uart_port *port)
{
 struct uart_pmac_port *uap = to_pmz(port);
 unsigned long flags;

 pmz_debug("pmz: shutdown()\n");

 if (uap->node == ((void*)0))
  return;

 mutex_lock(&pmz_irq_mutex);


        free_irq(uap->port.irq, uap);

 spin_lock_irqsave(&port->lock, flags);

 uap->flags &= ~PMACZILOG_FLAG_IS_OPEN;

 if (!ZS_IS_OPEN(uap->mate))
  pmz_get_port_A(uap)->flags &= ~PMACZILOG_FLAG_IS_IRQ_ON;


 if (!ZS_IS_ASLEEP(uap)) {
  uap->curregs[R1] &= ~(EXT_INT_ENAB | TxINT_ENAB | RxINT_MASK);
  write_zsreg(uap, R1, uap->curregs[R1]);
  zssync(uap);
 }

 if (ZS_IS_CONS(uap) || ZS_IS_ASLEEP(uap)) {
  spin_unlock_irqrestore(&port->lock, flags);
  mutex_unlock(&pmz_irq_mutex);
  return;
 }


 uap->curregs[R3] &= ~RxENABLE;
 uap->curregs[R5] &= ~TxENABLE;


 uap->curregs[R5] &= ~SND_BRK;
 pmz_maybe_update_regs(uap);


 pmz_set_scc_power(uap, 0);

 spin_unlock_irqrestore(&port->lock, flags);

 mutex_unlock(&pmz_irq_mutex);

 pmz_debug("pmz: shutdown() done.\n");
}
