
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct lbs_private {TYPE_1__* region_channel; } ;
struct chan_freq_power {int dummy; } ;
struct TYPE_2__ {int nrcfp; int valid; void* band; void* region; struct chan_freq_power* CFP; } ;


 int LBS_DEB_MAIN ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_main (char*,void*) ;
 struct chan_freq_power* lbs_get_region_cfp_table (void*,int*) ;
 int memset (TYPE_1__*,int ,int) ;

int lbs_set_regiontable(struct lbs_private *priv, u8 region, u8 band)
{
 int ret = 0;
 int i = 0;

 struct chan_freq_power *cfp;
 int cfp_no;

 lbs_deb_enter(LBS_DEB_MAIN);

 memset(priv->region_channel, 0, sizeof(priv->region_channel));

 cfp = lbs_get_region_cfp_table(region, &cfp_no);
 if (cfp != ((void*)0)) {
  priv->region_channel[i].nrcfp = cfp_no;
  priv->region_channel[i].CFP = cfp;
 } else {
  lbs_deb_main("wrong region code %#x in band B/G\n",
         region);
  ret = -1;
  goto out;
 }
 priv->region_channel[i].valid = 1;
 priv->region_channel[i].region = region;
 priv->region_channel[i].band = band;
 i++;
out:
 lbs_deb_leave_args(LBS_DEB_MAIN, "ret %d", ret);
 return ret;
}
