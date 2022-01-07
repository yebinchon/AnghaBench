
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_scc {int zlock; } ;
struct zs_port {scalar_t__ tx_stopped; struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct zs_port* to_zport (struct uart_port*) ;
 int zs_raw_transmit_chars (struct zs_port*) ;
 int zs_transmit_drain (struct zs_port*,int ) ;

__attribute__((used)) static void zs_start_tx(struct uart_port *uport)
{
 struct zs_port *zport = to_zport(uport);
 struct zs_scc *scc = zport->scc;

 spin_lock(&scc->zlock);
 if (zport->tx_stopped) {
  zs_transmit_drain(zport, 0);
  zport->tx_stopped = 0;
  zs_raw_transmit_chars(zport);
 }
 spin_unlock(&scc->zlock);
}
