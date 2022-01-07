
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_scc {int zlock; struct zs_port* zport; } ;
struct zs_port {int* regs; struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;


 int BRKIE ;
 int CTSIE ;
 int DCDIE ;
 int EXT_INT_ENAB ;
 int R1 ;
 int R15 ;
 int RxINT_DISAB ;
 int RxINT_MASK ;
 int SYNCIE ;
 int TxINT_ENAB ;
 size_t ZS_CHAN_A ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct zs_port* to_zport (struct uart_port*) ;
 int write_zsreg (struct zs_port*,int ,int) ;

__attribute__((used)) static void zs_stop_rx(struct uart_port *uport)
{
 struct zs_port *zport = to_zport(uport);
 struct zs_scc *scc = zport->scc;
 struct zs_port *zport_a = &scc->zport[ZS_CHAN_A];

 spin_lock(&scc->zlock);
 zport->regs[15] &= ~BRKIE;
 zport->regs[1] &= ~(RxINT_MASK | TxINT_ENAB);
 zport->regs[1] |= RxINT_DISAB;

 if (zport != zport_a) {

  zport_a->regs[15] &= ~(DCDIE | SYNCIE);
  write_zsreg(zport_a, R15, zport_a->regs[15]);
  if (!(zport_a->regs[15] & BRKIE)) {
   zport_a->regs[1] &= ~EXT_INT_ENAB;
   write_zsreg(zport_a, R1, zport_a->regs[1]);
  }


  zport->regs[15] &= ~(DCDIE | CTSIE);
  zport->regs[1] &= ~EXT_INT_ENAB;
 } else {

  if (!(zport->regs[15] & (DCDIE | SYNCIE)))
   zport->regs[1] &= ~EXT_INT_ENAB;
 }

 write_zsreg(zport, R15, zport->regs[15]);
 write_zsreg(zport, R1, zport->regs[1]);
 spin_unlock(&scc->zlock);
}
