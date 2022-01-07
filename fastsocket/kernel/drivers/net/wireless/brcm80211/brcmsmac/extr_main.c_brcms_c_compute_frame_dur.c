
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct brcms_c_info {int band; } ;


 scalar_t__ brcms_c_calc_ack_time (struct brcms_c_info*,int ,int ) ;
 scalar_t__ brcms_c_calc_frame_time (struct brcms_c_info*,int ,int ,scalar_t__) ;
 int get_sifs (int ) ;

__attribute__((used)) static u16
brcms_c_compute_frame_dur(struct brcms_c_info *wlc, u32 rate,
        u8 preamble_type, uint next_frag_len)
{
 u16 dur, sifs;

 sifs = get_sifs(wlc->band);

 dur = sifs;
 dur += (u16) brcms_c_calc_ack_time(wlc, rate, preamble_type);

 if (next_frag_len) {

  dur *= 2;

  dur += sifs;
  dur +=
      (u16) brcms_c_calc_frame_time(wlc, rate, preamble_type,
       next_frag_len);
 }
 return dur;
}
