
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zs_scc {int zlock; } ;
struct zs_port {struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;


 int ALL_SNT ;
 int R1 ;
 unsigned int TIOCSER_TEMT ;
 int read_zsreg (struct zs_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct zs_port* to_zport (struct uart_port*) ;

__attribute__((used)) static unsigned int zs_tx_empty(struct uart_port *uport)
{
 struct zs_port *zport = to_zport(uport);
 struct zs_scc *scc = zport->scc;
 unsigned long flags;
 u8 status;

 spin_lock_irqsave(&scc->zlock, flags);
 status = read_zsreg(zport, R1);
 spin_unlock_irqrestore(&scc->zlock, flags);

 return status & ALL_SNT ? TIOCSER_TEMT : 0;
}
