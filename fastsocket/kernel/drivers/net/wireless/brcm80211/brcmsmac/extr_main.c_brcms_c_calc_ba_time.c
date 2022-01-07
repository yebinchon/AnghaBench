
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u32 ;
struct brcms_c_info {int dummy; } ;


 scalar_t__ DOT11_BA_BITMAP_LEN ;
 scalar_t__ DOT11_BA_LEN ;
 scalar_t__ FCS_LEN ;
 int brcms_basic_rate (struct brcms_c_info*,int ) ;
 int brcms_c_calc_frame_time (struct brcms_c_info*,int ,int ,scalar_t__) ;

__attribute__((used)) static uint
brcms_c_calc_ba_time(struct brcms_c_info *wlc, u32 rspec,
       u8 preamble_type)
{





 rspec = brcms_basic_rate(wlc, rspec);

 return brcms_c_calc_frame_time(wlc, rspec, preamble_type,
       (DOT11_BA_LEN + DOT11_BA_BITMAP_LEN +
        FCS_LEN));
}
