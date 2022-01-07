
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct parsed_region_chan_11d {size_t nr_chan; TYPE_1__* chanpwr; int countrycode; } ;
struct lbs_802_11d_domain_reg {size_t nr_subband; TYPE_2__* subband; int countrycode; } ;
struct ieee_subbandset {int dummy; } ;
struct TYPE_4__ {size_t firstchan; size_t nrchan; size_t maxtxpwr; } ;
struct TYPE_3__ {size_t chan; size_t pwr; } ;


 int COUNTRY_CODE_LEN ;
 int LBS_DEB_11D ;
 int lbs_deb_11d (char*,size_t) ;
 int lbs_deb_hex (int ,char*,char*,int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int generate_domain_info_11d(struct parsed_region_chan_11d
      *parsed_region_chan,
      struct lbs_802_11d_domain_reg *domaininfo)
{
 u8 nr_subband = 0;

 u8 nr_chan = parsed_region_chan->nr_chan;
 u8 nr_parsedchan = 0;

 u8 firstchan = 0, nextchan = 0, maxpwr = 0;

 u8 i, flag = 0;

 memcpy(domaininfo->countrycode, parsed_region_chan->countrycode,
        COUNTRY_CODE_LEN);

 lbs_deb_11d("nrchan %d\n", nr_chan);
 lbs_deb_hex(LBS_DEB_11D, "parsed_region_chan", (char *)parsed_region_chan,
  sizeof(struct parsed_region_chan_11d));

 for (i = 0; i < nr_chan; i++) {
  if (!flag) {
   flag = 1;
   nextchan = firstchan =
       parsed_region_chan->chanpwr[i].chan;
   maxpwr = parsed_region_chan->chanpwr[i].pwr;
   nr_parsedchan = 1;
   continue;
  }

  if (parsed_region_chan->chanpwr[i].chan == nextchan + 1 &&
      parsed_region_chan->chanpwr[i].pwr == maxpwr) {
   nextchan++;
   nr_parsedchan++;
  } else {
   domaininfo->subband[nr_subband].firstchan = firstchan;
   domaininfo->subband[nr_subband].nrchan =
       nr_parsedchan;
   domaininfo->subband[nr_subband].maxtxpwr = maxpwr;
   nr_subband++;
   nextchan = firstchan =
       parsed_region_chan->chanpwr[i].chan;
   maxpwr = parsed_region_chan->chanpwr[i].pwr;
  }
 }

 if (flag) {
  domaininfo->subband[nr_subband].firstchan = firstchan;
  domaininfo->subband[nr_subband].nrchan = nr_parsedchan;
  domaininfo->subband[nr_subband].maxtxpwr = maxpwr;
  nr_subband++;
 }
 domaininfo->nr_subband = nr_subband;

 lbs_deb_11d("nr_subband=%x\n", domaininfo->nr_subband);
 lbs_deb_hex(LBS_DEB_11D, "domaininfo", (char *)domaininfo,
  COUNTRY_CODE_LEN + 1 +
  sizeof(struct ieee_subbandset) * nr_subband);
 return 0;
}
