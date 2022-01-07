
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct dz_port {int cflag; } ;


 int DZ_LPR ;
 int DZ_RXENAB ;
 int dz_out (struct dz_port*,int ,int ) ;
 struct dz_port* to_dport (struct uart_port*) ;

__attribute__((used)) static void dz_stop_rx(struct uart_port *uport)
{
 struct dz_port *dport = to_dport(uport);

 dport->cflag &= ~DZ_RXENAB;
 dz_out(dport, DZ_LPR, dport->cflag);
}
