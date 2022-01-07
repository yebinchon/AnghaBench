
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct chan_freq_power {int channel; scalar_t__ unsupported; } ;


 int LBS_DEB_11D ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 struct chan_freq_power* lbs_get_region_cfp_table (int,int*) ;

__attribute__((used)) static u8 lbs_region_chan_supported_11d(u8 region, u8 chan)
{
 struct chan_freq_power *cfp;
 int cfp_no;
 u8 idx;
 int ret = 0;

 lbs_deb_enter(LBS_DEB_11D);

 cfp = lbs_get_region_cfp_table(region, &cfp_no);
 if (cfp == ((void*)0))
  return 0;

 for (idx = 0; idx < cfp_no; idx++) {
  if (chan == (cfp + idx)->channel) {

   if ((cfp + idx)->unsupported) {
    ret = 0;
   } else {
    ret = 1;
   }
   goto done;
  }
 }



done:
 lbs_deb_leave_args(LBS_DEB_11D, "ret %d", ret);
 return ret;
}
