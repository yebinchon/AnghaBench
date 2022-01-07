
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct chan_freq_power {int dummy; } ;
struct TYPE_3__ {scalar_t__ region; int cfp_no_BG; struct chan_freq_power* cfp_BG; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int LBS_DEB_MAIN ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_deb_leave_args (int ,char*) ;
 int lbs_deb_main (char*,scalar_t__) ;
 TYPE_1__* region_cfp_table ;

struct chan_freq_power *lbs_get_region_cfp_table(u8 region, int *cfp_no)
{
 int i, end;

 lbs_deb_enter(LBS_DEB_MAIN);

 end = ARRAY_SIZE(region_cfp_table);

 for (i = 0; i < end ; i++) {
  lbs_deb_main("region_cfp_table[i].region=%d\n",
   region_cfp_table[i].region);
  if (region_cfp_table[i].region == region) {
   *cfp_no = region_cfp_table[i].cfp_no_BG;
   lbs_deb_leave(LBS_DEB_MAIN);
   return region_cfp_table[i].cfp_BG;
  }
 }

 lbs_deb_leave_args(LBS_DEB_MAIN, "ret NULL");
 return ((void*)0);
}
