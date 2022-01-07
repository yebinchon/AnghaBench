
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int * handlers; } ;


 size_t C_TX ;
 size_t N_3945_RX ;
 int il3945_hdl_rx ;
 int il3945_hdl_tx ;

void
il3945_hw_handler_setup(struct il_priv *il)
{
 il->handlers[C_TX] = il3945_hdl_tx;
 il->handlers[N_3945_RX] = il3945_hdl_rx;
}
