
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_port {int tx_stopped; } ;


 int R0 ;
 int RES_Tx_P ;
 int write_zsreg (struct zs_port*,int ,int ) ;

__attribute__((used)) static void zs_raw_stop_tx(struct zs_port *zport)
{
 write_zsreg(zport, R0, RES_Tx_P);
 zport->tx_stopped = 1;
}
