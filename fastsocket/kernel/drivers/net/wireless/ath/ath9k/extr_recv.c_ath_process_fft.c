
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct ieee80211_hdr {int dummy; } ;
struct TYPE_6__ {void* length; int type; } ;
struct fft_sample_ht20 {int* data; int max_exp; TYPE_3__ tlv; int tsf; int bitmap_weight; int max_index; void* max_magnitude; int noise; int rssi; void* freq; } ;
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_rx_status {int rs_datalen; scalar_t__ rs_phyerr; int rs_rssi_ctl0; } ;
struct ath_radar_info {int pulse_bw_info; } ;
struct ath_hw {int noise; TYPE_2__* curchan; } ;
struct ath_ht20_mag_info {int max_exp; int all_bins; } ;
typedef int fft_sample ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct TYPE_4__ {int center_freq; } ;


 scalar_t__ ATH9K_PHYERR_FALSE_RADAR_EXT ;
 scalar_t__ ATH9K_PHYERR_RADAR ;
 scalar_t__ ATH9K_PHYERR_SPECTRAL ;
 int ATH_FFT_SAMPLE_HT20 ;
 int SPECTRAL_HT20_NUM_BINS ;
 int SPECTRAL_HT20_TOTAL_DATA_LEN ;
 int SPECTRAL_SCAN_BITMASK ;
 void* __cpu_to_be16 (int) ;
 int __cpu_to_be64 (int ) ;
 int ath_debug_send_fft_sample (struct ath_softc*,TYPE_3__*) ;
 int fix_rssi_inv_only (int ) ;
 int memcpy (int*,int*,int) ;
 int spectral_bitmap_weight (int ) ;
 int spectral_max_index (int ) ;
 int spectral_max_magnitude (int ) ;

__attribute__((used)) static int ath_process_fft(struct ath_softc *sc, struct ieee80211_hdr *hdr,
      struct ath_rx_status *rs, u64 tsf)
{
 return 0;

}
