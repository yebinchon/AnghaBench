
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int dummy; } ;


 int DEBUGFS_DEL (int ) ;
 int DEBUGFS_FWSTATS_DEL (int ,int ) ;
 int addr_key_count ;
 int aes ;
 int beacon_buffer_thres_host_int_trig_rx_data ;
 int calc_failure ;
 int calibration ;
 int cmd_cmplt ;
 int commands ;
 int decrypt_done ;
 int decrypt_fail ;
 int decrypt_interrupt ;
 int decrypt_packets ;
 int default_key_count ;
 int descr_host_int_trig_rx_data ;
 int disable_ps ;
 int dma ;
 int dma0_done ;
 int dma1_done ;
 int dropped ;
 int elp_enter ;
 int enable_ps ;
 int encrypt_fail ;
 int encrypt_interrupt ;
 int encrypt_packets ;
 int event ;
 int excessive_retries ;
 int fcs_err ;
 int fiqs ;
 int fix_tsf_ps ;
 int hdr_overflow ;
 int heart_beat ;
 int host_acknowledges ;
 int hw_pm_mode_changes ;
 int hw_stuck ;
 int internal_desc_overflow ;
 int interrupt ;
 int irqs ;
 int isr ;
 int key_not_found ;
 int low_rssi ;
 int mic ;
 int missed_beacon_host_int_trig_rx_data ;
 int missing_bcns ;
 int oom_late ;
 int out_of_mem ;
 int packets ;
 int path_reset ;
 int pci_pm ;
 int phy_transmit_error ;
 int power_save_off ;
 int ps ;
 int ps_enter ;
 int pspoll_max_apturn ;
 int pspoll_timeouts ;
 int pspoll_utilization ;
 int pwr ;
 int rcvd_awake_beacons ;
 int rcvd_beacons ;
 int reset_counter ;
 int retry_count ;
 int rx ;
 int rx_errors ;
 int rx_headers ;
 int rx_mem_empty ;
 int rx_mem_overflow ;
 int rx_mismatch ;
 int rx_pkts ;
 int rx_pool ;
 int rx_prep_beacon_drop ;
 int rx_procs ;
 int rx_rdys ;
 int rx_requested ;
 int rxpipe ;
 int tx ;
 int tx_errors ;
 int tx_exch_complete ;
 int tx_procs ;
 int tx_queue_len ;
 int tx_queue_status ;
 int tx_requested ;
 int tx_stuck ;
 int tx_with_ps ;
 int tx_without_ps ;
 int tx_xfr_host_int_trig_rx_data ;
 int upsd_max_apturn ;
 int upsd_max_sptime ;
 int upsd_timeouts ;
 int upsd_utilization ;
 int wake_on_host ;
 int wake_on_timer_exp ;
 int wakeups ;
 int wep ;
 int xfr_hint_trig ;

__attribute__((used)) static void wl1251_debugfs_delete_files(struct wl1251 *wl)
{
 DEBUGFS_FWSTATS_DEL(tx, internal_desc_overflow);

 DEBUGFS_FWSTATS_DEL(rx, out_of_mem);
 DEBUGFS_FWSTATS_DEL(rx, hdr_overflow);
 DEBUGFS_FWSTATS_DEL(rx, hw_stuck);
 DEBUGFS_FWSTATS_DEL(rx, dropped);
 DEBUGFS_FWSTATS_DEL(rx, fcs_err);
 DEBUGFS_FWSTATS_DEL(rx, xfr_hint_trig);
 DEBUGFS_FWSTATS_DEL(rx, path_reset);
 DEBUGFS_FWSTATS_DEL(rx, reset_counter);

 DEBUGFS_FWSTATS_DEL(dma, rx_requested);
 DEBUGFS_FWSTATS_DEL(dma, rx_errors);
 DEBUGFS_FWSTATS_DEL(dma, tx_requested);
 DEBUGFS_FWSTATS_DEL(dma, tx_errors);

 DEBUGFS_FWSTATS_DEL(isr, cmd_cmplt);
 DEBUGFS_FWSTATS_DEL(isr, fiqs);
 DEBUGFS_FWSTATS_DEL(isr, rx_headers);
 DEBUGFS_FWSTATS_DEL(isr, rx_mem_overflow);
 DEBUGFS_FWSTATS_DEL(isr, rx_rdys);
 DEBUGFS_FWSTATS_DEL(isr, irqs);
 DEBUGFS_FWSTATS_DEL(isr, tx_procs);
 DEBUGFS_FWSTATS_DEL(isr, decrypt_done);
 DEBUGFS_FWSTATS_DEL(isr, dma0_done);
 DEBUGFS_FWSTATS_DEL(isr, dma1_done);
 DEBUGFS_FWSTATS_DEL(isr, tx_exch_complete);
 DEBUGFS_FWSTATS_DEL(isr, commands);
 DEBUGFS_FWSTATS_DEL(isr, rx_procs);
 DEBUGFS_FWSTATS_DEL(isr, hw_pm_mode_changes);
 DEBUGFS_FWSTATS_DEL(isr, host_acknowledges);
 DEBUGFS_FWSTATS_DEL(isr, pci_pm);
 DEBUGFS_FWSTATS_DEL(isr, wakeups);
 DEBUGFS_FWSTATS_DEL(isr, low_rssi);

 DEBUGFS_FWSTATS_DEL(wep, addr_key_count);
 DEBUGFS_FWSTATS_DEL(wep, default_key_count);

 DEBUGFS_FWSTATS_DEL(wep, key_not_found);
 DEBUGFS_FWSTATS_DEL(wep, decrypt_fail);
 DEBUGFS_FWSTATS_DEL(wep, packets);
 DEBUGFS_FWSTATS_DEL(wep, interrupt);

 DEBUGFS_FWSTATS_DEL(pwr, ps_enter);
 DEBUGFS_FWSTATS_DEL(pwr, elp_enter);
 DEBUGFS_FWSTATS_DEL(pwr, missing_bcns);
 DEBUGFS_FWSTATS_DEL(pwr, wake_on_host);
 DEBUGFS_FWSTATS_DEL(pwr, wake_on_timer_exp);
 DEBUGFS_FWSTATS_DEL(pwr, tx_with_ps);
 DEBUGFS_FWSTATS_DEL(pwr, tx_without_ps);
 DEBUGFS_FWSTATS_DEL(pwr, rcvd_beacons);
 DEBUGFS_FWSTATS_DEL(pwr, power_save_off);
 DEBUGFS_FWSTATS_DEL(pwr, enable_ps);
 DEBUGFS_FWSTATS_DEL(pwr, disable_ps);
 DEBUGFS_FWSTATS_DEL(pwr, fix_tsf_ps);

 DEBUGFS_FWSTATS_DEL(pwr, rcvd_awake_beacons);

 DEBUGFS_FWSTATS_DEL(mic, rx_pkts);
 DEBUGFS_FWSTATS_DEL(mic, calc_failure);

 DEBUGFS_FWSTATS_DEL(aes, encrypt_fail);
 DEBUGFS_FWSTATS_DEL(aes, decrypt_fail);
 DEBUGFS_FWSTATS_DEL(aes, encrypt_packets);
 DEBUGFS_FWSTATS_DEL(aes, decrypt_packets);
 DEBUGFS_FWSTATS_DEL(aes, encrypt_interrupt);
 DEBUGFS_FWSTATS_DEL(aes, decrypt_interrupt);

 DEBUGFS_FWSTATS_DEL(event, heart_beat);
 DEBUGFS_FWSTATS_DEL(event, calibration);
 DEBUGFS_FWSTATS_DEL(event, rx_mismatch);
 DEBUGFS_FWSTATS_DEL(event, rx_mem_empty);
 DEBUGFS_FWSTATS_DEL(event, rx_pool);
 DEBUGFS_FWSTATS_DEL(event, oom_late);
 DEBUGFS_FWSTATS_DEL(event, phy_transmit_error);
 DEBUGFS_FWSTATS_DEL(event, tx_stuck);

 DEBUGFS_FWSTATS_DEL(ps, pspoll_timeouts);
 DEBUGFS_FWSTATS_DEL(ps, upsd_timeouts);
 DEBUGFS_FWSTATS_DEL(ps, upsd_max_sptime);
 DEBUGFS_FWSTATS_DEL(ps, upsd_max_apturn);
 DEBUGFS_FWSTATS_DEL(ps, pspoll_max_apturn);
 DEBUGFS_FWSTATS_DEL(ps, pspoll_utilization);
 DEBUGFS_FWSTATS_DEL(ps, upsd_utilization);

 DEBUGFS_FWSTATS_DEL(rxpipe, rx_prep_beacon_drop);
 DEBUGFS_FWSTATS_DEL(rxpipe, descr_host_int_trig_rx_data);
 DEBUGFS_FWSTATS_DEL(rxpipe, beacon_buffer_thres_host_int_trig_rx_data);
 DEBUGFS_FWSTATS_DEL(rxpipe, missed_beacon_host_int_trig_rx_data);
 DEBUGFS_FWSTATS_DEL(rxpipe, tx_xfr_host_int_trig_rx_data);

 DEBUGFS_DEL(tx_queue_len);
 DEBUGFS_DEL(tx_queue_status);
 DEBUGFS_DEL(retry_count);
 DEBUGFS_DEL(excessive_retries);
}
