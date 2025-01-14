
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct region_channel {scalar_t__ band; int nrcfp; struct chan_freq_power* CFP; int valid; } ;
struct lbs_private {struct region_channel* universal_channel; scalar_t__ enable11d; struct region_channel* region_channel; } ;
struct chan_freq_power {scalar_t__ freq; } ;


 int ARRAY_SIZE (struct region_channel*) ;
 int lbs_deb_wext (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct chan_freq_power *find_cfp_by_band_and_freq(
 struct lbs_private *priv,
 u8 band,
 u32 freq)
{
 struct chan_freq_power *cfp = ((void*)0);
 struct region_channel *rc;
 int i, j;

 for (j = 0; !cfp && (j < ARRAY_SIZE(priv->region_channel)); j++) {
  rc = &priv->region_channel[j];

  if (priv->enable11d)
   rc = &priv->universal_channel[j];
  if (!rc->valid || !rc->CFP)
   continue;
  if (rc->band != band)
   continue;
  for (i = 0; i < rc->nrcfp; i++) {
   if (rc->CFP[i].freq == freq) {
    cfp = &rc->CFP[i];
    break;
   }
  }
 }

 if (!cfp && freq)
  lbs_deb_wext("find_cfp_by_band_and_freql: can't find cfp by "
         "band %d / freq %d\n", band, freq);

 return cfp;
}
