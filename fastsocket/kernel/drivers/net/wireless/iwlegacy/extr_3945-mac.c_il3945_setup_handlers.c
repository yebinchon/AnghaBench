
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int * handlers; } ;


 size_t C_ADD_STA ;
 size_t C_STATS ;
 size_t N_ALIVE ;
 size_t N_BEACON ;
 size_t N_CARD_STATE ;
 size_t N_CHANNEL_SWITCH ;
 size_t N_ERROR ;
 size_t N_PM_DEBUG_STATS ;
 size_t N_PM_SLEEP ;
 size_t N_SPECTRUM_MEASUREMENT ;
 size_t N_STATS ;
 int il3945_hdl_add_sta ;
 int il3945_hdl_alive ;
 int il3945_hdl_beacon ;
 int il3945_hdl_c_stats ;
 int il3945_hdl_card_state ;
 int il3945_hdl_stats ;
 int il3945_hw_handler_setup (struct il_priv*) ;
 int il_hdl_csa ;
 int il_hdl_error ;
 int il_hdl_pm_debug_stats ;
 int il_hdl_pm_sleep ;
 int il_hdl_spectrum_measurement ;
 int il_setup_rx_scan_handlers (struct il_priv*) ;

__attribute__((used)) static void
il3945_setup_handlers(struct il_priv *il)
{
 il->handlers[N_ALIVE] = il3945_hdl_alive;
 il->handlers[C_ADD_STA] = il3945_hdl_add_sta;
 il->handlers[N_ERROR] = il_hdl_error;
 il->handlers[N_CHANNEL_SWITCH] = il_hdl_csa;
 il->handlers[N_SPECTRUM_MEASUREMENT] = il_hdl_spectrum_measurement;
 il->handlers[N_PM_SLEEP] = il_hdl_pm_sleep;
 il->handlers[N_PM_DEBUG_STATS] = il_hdl_pm_debug_stats;
 il->handlers[N_BEACON] = il3945_hdl_beacon;






 il->handlers[C_STATS] = il3945_hdl_c_stats;
 il->handlers[N_STATS] = il3945_hdl_stats;

 il_setup_rx_scan_handlers(il);
 il->handlers[N_CARD_STATE] = il3945_hdl_card_state;


 il3945_hw_handler_setup(il);
}
