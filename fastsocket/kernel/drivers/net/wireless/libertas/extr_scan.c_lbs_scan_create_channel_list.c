
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct region_channel {int nrcfp; scalar_t__ band; struct chan_freq_power* CFP; int valid; } ;
struct lbs_private {scalar_t__ connect_status; scalar_t__ mesh_connect_status; int parsed_region_chan; scalar_t__ enable11d; struct region_channel* region_channel; struct region_channel* universal_channel; } ;
struct TYPE_2__ {int passivescan; } ;
struct chanscanparamset {int channumber; TYPE_1__ chanscanmode; void* maxscantime; int radiotype; } ;
struct chan_freq_power {int channel; } ;


 int ARRAY_SIZE (struct region_channel*) ;
 scalar_t__ BAND_B ;
 scalar_t__ BAND_G ;
 int CMD_SCAN_RADIO_TYPE_BG ;
 scalar_t__ CMD_SCAN_TYPE_ACTIVE ;
 scalar_t__ CMD_SCAN_TYPE_PASSIVE ;
 scalar_t__ LBS_CONNECTED ;
 int MRVDRV_ACTIVE_SCAN_CHAN_TIME ;
 int MRVDRV_PASSIVE_SCAN_CHAN_TIME ;
 void* cpu_to_le16 (int ) ;
 scalar_t__ lbs_get_scan_type_11d (int ,int *) ;
 int memset (int *,int,int) ;

__attribute__((used)) static int lbs_scan_create_channel_list(struct lbs_private *priv,
     struct chanscanparamset *scanchanlist)
{
 struct region_channel *scanregion;
 struct chan_freq_power *cfp;
 int rgnidx;
 int chanidx;
 int nextchan;
 uint8_t scantype;

 chanidx = 0;





 scantype = CMD_SCAN_TYPE_ACTIVE;

 for (rgnidx = 0; rgnidx < ARRAY_SIZE(priv->region_channel); rgnidx++) {
  if (priv->enable11d && (priv->connect_status != LBS_CONNECTED)
      && (priv->mesh_connect_status != LBS_CONNECTED)) {

   if (!priv->universal_channel[rgnidx].valid)
    continue;
   scanregion = &priv->universal_channel[rgnidx];


   memset(&priv->parsed_region_chan, 0x00,
          sizeof(priv->parsed_region_chan));
  } else {
   if (!priv->region_channel[rgnidx].valid)
    continue;
   scanregion = &priv->region_channel[rgnidx];
  }

  for (nextchan = 0; nextchan < scanregion->nrcfp; nextchan++, chanidx++) {
   struct chanscanparamset *chan = &scanchanlist[chanidx];

   cfp = scanregion->CFP + nextchan;

   if (priv->enable11d)
    scantype = lbs_get_scan_type_11d(cfp->channel,
         &priv->parsed_region_chan);

   if (scanregion->band == BAND_B || scanregion->band == BAND_G)
    chan->radiotype = CMD_SCAN_RADIO_TYPE_BG;

   if (scantype == CMD_SCAN_TYPE_PASSIVE) {
    chan->maxscantime = cpu_to_le16(MRVDRV_PASSIVE_SCAN_CHAN_TIME);
    chan->chanscanmode.passivescan = 1;
   } else {
    chan->maxscantime = cpu_to_le16(MRVDRV_ACTIVE_SCAN_CHAN_TIME);
    chan->chanscanmode.passivescan = 0;
   }

   chan->channumber = cfp->channel;
  }
 }
 return chanidx;
}
