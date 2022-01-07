
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_qe_port {int rx_nrfifos; int rx_fifosize; int tx_nrfifos; struct qe_bd* tx_cur; int tx_fifosize; struct qe_bd* tx_bd_base; void* bd_virt; struct qe_bd* rx_bd_base; struct qe_bd* rx_cur; } ;
struct qe_bd {int length; int buf; int status; } ;


 int BD_SC_EMPTY ;
 int BD_SC_INTRPT ;
 int BD_SC_P ;
 int BD_SC_WRAP ;
 int L1_CACHE_ALIGN (int) ;
 int cpu2qe_addr (void*,struct uart_qe_port*) ;
 int out_be16 (int *,int) ;
 int out_be32 (int *,int ) ;
 int setbits16 (int *,int ) ;

__attribute__((used)) static void qe_uart_initbd(struct uart_qe_port *qe_port)
{
 int i;
 void *bd_virt;
 struct qe_bd *bdp;




 bd_virt = qe_port->bd_virt;
 bdp = qe_port->rx_bd_base;
 qe_port->rx_cur = qe_port->rx_bd_base;
 for (i = 0; i < (qe_port->rx_nrfifos - 1); i++) {
  out_be16(&bdp->status, BD_SC_EMPTY | BD_SC_INTRPT);
  out_be32(&bdp->buf, cpu2qe_addr(bd_virt, qe_port));
  out_be16(&bdp->length, 0);
  bd_virt += qe_port->rx_fifosize;
  bdp++;
 }


 out_be16(&bdp->status, BD_SC_WRAP | BD_SC_EMPTY | BD_SC_INTRPT);
 out_be32(&bdp->buf, cpu2qe_addr(bd_virt, qe_port));
 out_be16(&bdp->length, 0);





 bd_virt = qe_port->bd_virt +
  L1_CACHE_ALIGN(qe_port->rx_nrfifos * qe_port->rx_fifosize);
 qe_port->tx_cur = qe_port->tx_bd_base;
 bdp = qe_port->tx_bd_base;
 for (i = 0; i < (qe_port->tx_nrfifos - 1); i++) {
  out_be16(&bdp->status, BD_SC_INTRPT);
  out_be32(&bdp->buf, cpu2qe_addr(bd_virt, qe_port));
  out_be16(&bdp->length, 0);
  bd_virt += qe_port->tx_fifosize;
  bdp++;
 }






 out_be16(&bdp->status, BD_SC_WRAP | BD_SC_INTRPT);
 out_be32(&bdp->buf, cpu2qe_addr(bd_virt, qe_port));
 out_be16(&bdp->length, 0);
}
