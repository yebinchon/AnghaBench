
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int * handlers; } ;


 size_t C_SCAN ;
 size_t N_SCAN_COMPLETE ;
 size_t N_SCAN_RESULTS ;
 size_t N_SCAN_START ;
 int il_hdl_scan ;
 int il_hdl_scan_complete ;
 int il_hdl_scan_results ;
 int il_hdl_scan_start ;

void
il_setup_rx_scan_handlers(struct il_priv *il)
{

 il->handlers[C_SCAN] = il_hdl_scan;
 il->handlers[N_SCAN_START] = il_hdl_scan_start;
 il->handlers[N_SCAN_RESULTS] = il_hdl_scan_results;
 il->handlers[N_SCAN_COMPLETE] = il_hdl_scan_complete;
}
