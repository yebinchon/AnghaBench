
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct brcms_c_info {int band; } ;


 int BRCMS_SHORT_PREAMBLE ;
 scalar_t__ brcms_c_calc_ack_time (struct brcms_c_info*,int ,int ) ;
 scalar_t__ brcms_c_calc_ba_time (struct brcms_c_info*,int ,int ) ;
 scalar_t__ brcms_c_calc_cts_time (struct brcms_c_info*,int ,int ) ;
 scalar_t__ brcms_c_calc_frame_time (struct brcms_c_info*,int ,int ,int ) ;
 int get_sifs (int ) ;

u16
brcms_c_compute_rtscts_dur(struct brcms_c_info *wlc, bool cts_only,
      u32 rts_rate,
      u32 frame_rate, u8 rts_preamble_type,
      u8 frame_preamble_type, uint frame_len, bool ba)
{
 u16 dur, sifs;

 sifs = get_sifs(wlc->band);

 if (!cts_only) {

  dur = 3 * sifs;
  dur +=
      (u16) brcms_c_calc_cts_time(wlc, rts_rate,
            rts_preamble_type);
 } else {

  dur = 2 * sifs;
 }

 dur +=
     (u16) brcms_c_calc_frame_time(wlc, frame_rate, frame_preamble_type,
      frame_len);
 if (ba)
  dur +=
      (u16) brcms_c_calc_ba_time(wlc, frame_rate,
           BRCMS_SHORT_PREAMBLE);
 else
  dur +=
      (u16) brcms_c_calc_ack_time(wlc, frame_rate,
            frame_preamble_type);
 return dur;
}
