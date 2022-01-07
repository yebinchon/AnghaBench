
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct region_channel {size_t nrcfp; int region; int band; struct chan_freq_power* CFP; } ;
struct parsed_region_chan_11d {size_t nr_chan; TYPE_1__* chanpwr; int band; int region; int countrycode; } ;
struct chan_freq_power {int maxtxpower; int channel; } ;
struct TYPE_2__ {int pwr; int chan; } ;


 int COUNTRY_CODE_LEN ;
 int lbs_code_2_region (int ) ;
 int lbs_deb_11d (char*,...) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void lbs_generate_parsed_region_chan_11d(struct region_channel *region_chan,
       struct parsed_region_chan_11d *
       parsed_region_chan)
{
 u8 i;
 struct chan_freq_power *cfp;

 if (region_chan == ((void*)0)) {
  lbs_deb_11d("region_chan is NULL\n");
  return;
 }

 cfp = region_chan->CFP;
 if (cfp == ((void*)0)) {
  lbs_deb_11d("cfp is NULL \n");
  return;
 }

 parsed_region_chan->band = region_chan->band;
 parsed_region_chan->region = region_chan->region;
 memcpy(parsed_region_chan->countrycode,
        lbs_code_2_region(region_chan->region), COUNTRY_CODE_LEN);

 lbs_deb_11d("region 0x%x, band %d\n", parsed_region_chan->region,
        parsed_region_chan->band);

 for (i = 0; i < region_chan->nrcfp; i++, cfp++) {
  parsed_region_chan->chanpwr[i].chan = cfp->channel;
  parsed_region_chan->chanpwr[i].pwr = cfp->maxtxpower;
  lbs_deb_11d("chan %d, pwr %d\n",
         parsed_region_chan->chanpwr[i].chan,
         parsed_region_chan->chanpwr[i].pwr);
 }
 parsed_region_chan->nr_chan = region_chan->nrcfp;

 lbs_deb_11d("nrchan %d\n", parsed_region_chan->nr_chan);

 return;
}
