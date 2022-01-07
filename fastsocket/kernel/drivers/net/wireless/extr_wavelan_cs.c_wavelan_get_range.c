
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {unsigned int base_addr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_8__ {int level; int noise; void* qual; } ;
struct TYPE_7__ {int noise; int level; void* qual; } ;
struct iw_range {int we_version_source; double throughput; int min_nwid; int max_nwid; int sensitivity; int num_bitrates; int* bitrate; int* event_capa; int num_channels; int num_frequency; int* encoding_size; int num_encoding_sizes; int max_encoding_tokens; int freq; TYPE_3__ avg_qual; TYPE_2__ max_qual; int we_version_compiled; } ;
struct TYPE_9__ {int spinlock; } ;
typedef TYPE_4__ net_local ;


 int IW_EVENT_CAPA_K_1 ;
 int IW_EVENT_CAPA_MASK (int) ;
 int IW_MAX_FREQUENCIES ;
 int MMR_FEE_STATUS_BUSY ;
 int MMR_FEE_STATUS_DWLD ;
 void* MMR_SGNL_QUAL ;
 int MMR_SIGNAL_LVL ;
 int MMR_SILENCE_LVL ;
 int WIRELESS_EXT ;
 int memset (struct iw_range*,int ,int) ;
 scalar_t__ mmc_encr (unsigned int) ;
 int mmc_in (unsigned int,int ) ;
 int mmr_fee_status ;
 int mmroff (int ,int ) ;
 TYPE_4__* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wv_frequency_list (unsigned int,int ,int ) ;

__attribute__((used)) static int wavelan_get_range(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu,
        char *extra)
{
 unsigned int base = dev->base_addr;
 net_local *lp = netdev_priv(dev);
 struct iw_range *range = (struct iw_range *) extra;
 unsigned long flags;
 int ret = 0;


 wrqu->data.length = sizeof(struct iw_range);


 memset(range, 0, sizeof(struct iw_range));


 range->we_version_compiled = WIRELESS_EXT;
 range->we_version_source = 9;


 range->throughput = 1.4 * 1000 * 1000;
 range->min_nwid = 0x0000;
 range->max_nwid = 0xFFFF;

 range->sensitivity = 0x3F;
 range->max_qual.qual = MMR_SGNL_QUAL;
 range->max_qual.level = MMR_SIGNAL_LVL;
 range->max_qual.noise = MMR_SILENCE_LVL;
 range->avg_qual.qual = MMR_SGNL_QUAL;

 range->avg_qual.level = 30;
 range->avg_qual.noise = 8;

 range->num_bitrates = 1;
 range->bitrate[0] = 2000000;


 range->event_capa[0] = (IW_EVENT_CAPA_MASK(0x8B02) |
    IW_EVENT_CAPA_MASK(0x8B04) |
    IW_EVENT_CAPA_MASK(0x8B06));
 range->event_capa[1] = IW_EVENT_CAPA_K_1;


 spin_lock_irqsave(&lp->spinlock, flags);


 if (!(mmc_in(base, mmroff(0, mmr_fee_status)) &
       (MMR_FEE_STATUS_DWLD | MMR_FEE_STATUS_BUSY))) {
  range->num_channels = 10;
  range->num_frequency = wv_frequency_list(base, range->freq,
       IW_MAX_FREQUENCIES);
 } else
  range->num_channels = range->num_frequency = 0;


 if (mmc_encr(base)) {
  range->encoding_size[0] = 8;
  range->num_encoding_sizes = 1;
  range->max_encoding_tokens = 1;
 } else {
  range->num_encoding_sizes = 0;
  range->max_encoding_tokens = 0;
 }


 spin_unlock_irqrestore(&lp->spinlock, flags);

 return ret;
}
