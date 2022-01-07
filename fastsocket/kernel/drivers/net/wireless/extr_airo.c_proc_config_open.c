
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_dir_entry {struct net_device* data; } ;
struct proc_data {int maxwritelen; int * rbuffer; int readlen; int on_close; int * wbuffer; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {int * private_data; } ;
struct TYPE_2__ {int opmode; char* nodeName; scalar_t__ powerSaveMode; int txDiversity; int rxDiversity; scalar_t__ authType; scalar_t__ modulation; scalar_t__ preamble; int fragThresh; int rxLifetime; int txLifetime; int rtsThres; int shortRetryLimit; int longRetryLimit; int txPower; int channelSet; scalar_t__* rates; int rmode; } ;
struct airo_info {TYPE_1__ config; int flags; } ;
typedef int __le16 ;


 scalar_t__ AUTH_ENCRYPT ;
 scalar_t__ AUTH_SHAREDKEY ;
 int ENOMEM ;
 int FLAG_RADIO_OFF ;
 int GFP_KERNEL ;
 int MODE_AP ;
 int MODE_AP_RPTR ;
 int MODE_CFG_MASK ;
 int MODE_STA_ESS ;
 int MODE_STA_IBSS ;
 scalar_t__ MOD_CCK ;
 scalar_t__ MOD_DEFAULT ;
 scalar_t__ MOD_MOK ;
 struct proc_dir_entry* PDE (struct inode*) ;
 scalar_t__ POWERSAVE_CAM ;
 scalar_t__ POWERSAVE_PSP ;
 scalar_t__ POWERSAVE_PSPCAM ;
 scalar_t__ PREAMBLE_AUTO ;
 scalar_t__ PREAMBLE_LONG ;
 scalar_t__ PREAMBLE_SHORT ;
 char* get_rmode (int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 void* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int proc_config_on_close ;
 int readConfigRid (struct airo_info*,int) ;
 int sprintf (int *,char*,...) ;
 int strlen (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int proc_config_open(struct inode *inode, struct file *file)
{
 struct proc_data *data;
 struct proc_dir_entry *dp = PDE(inode);
 struct net_device *dev = dp->data;
 struct airo_info *ai = dev->ml_priv;
 int i;
 __le16 mode;

 if ((file->private_data = kzalloc(sizeof(struct proc_data ), GFP_KERNEL)) == ((void*)0))
  return -ENOMEM;
 data = (struct proc_data *)file->private_data;
 if ((data->rbuffer = kmalloc( 2048, GFP_KERNEL )) == ((void*)0)) {
  kfree (file->private_data);
  return -ENOMEM;
 }
 if ((data->wbuffer = kzalloc( 2048, GFP_KERNEL )) == ((void*)0)) {
  kfree (data->rbuffer);
  kfree (file->private_data);
  return -ENOMEM;
 }
 data->maxwritelen = 2048;
 data->on_close = proc_config_on_close;

 readConfigRid(ai, 1);

 mode = ai->config.opmode & MODE_CFG_MASK;
 i = sprintf( data->rbuffer,
       "Mode: %s\n"
       "Radio: %s\n"
       "NodeName: %-16s\n"
       "PowerMode: %s\n"
       "DataRates: %d %d %d %d %d %d %d %d\n"
       "Channel: %d\n"
       "XmitPower: %d\n",
       mode == MODE_STA_IBSS ? "adhoc" :
       mode == MODE_STA_ESS ? get_rmode(ai->config.rmode):
       mode == MODE_AP ? "AP" :
       mode == MODE_AP_RPTR ? "AP RPTR" : "Error",
       test_bit(FLAG_RADIO_OFF, &ai->flags) ? "off" : "on",
       ai->config.nodeName,
       ai->config.powerSaveMode == POWERSAVE_CAM ? "CAM" :
       ai->config.powerSaveMode == POWERSAVE_PSP ? "PSP" :
       ai->config.powerSaveMode == POWERSAVE_PSPCAM ? "PSPCAM" :
       "Error",
       (int)ai->config.rates[0],
       (int)ai->config.rates[1],
       (int)ai->config.rates[2],
       (int)ai->config.rates[3],
       (int)ai->config.rates[4],
       (int)ai->config.rates[5],
       (int)ai->config.rates[6],
       (int)ai->config.rates[7],
       le16_to_cpu(ai->config.channelSet),
       le16_to_cpu(ai->config.txPower)
  );
 sprintf( data->rbuffer + i,
   "LongRetryLimit: %d\n"
   "ShortRetryLimit: %d\n"
   "RTSThreshold: %d\n"
   "TXMSDULifetime: %d\n"
   "RXMSDULifetime: %d\n"
   "TXDiversity: %s\n"
   "RXDiversity: %s\n"
   "FragThreshold: %d\n"
   "WEP: %s\n"
   "Modulation: %s\n"
   "Preamble: %s\n",
   le16_to_cpu(ai->config.longRetryLimit),
   le16_to_cpu(ai->config.shortRetryLimit),
   le16_to_cpu(ai->config.rtsThres),
   le16_to_cpu(ai->config.txLifetime),
   le16_to_cpu(ai->config.rxLifetime),
   ai->config.txDiversity == 1 ? "left" :
   ai->config.txDiversity == 2 ? "right" : "both",
   ai->config.rxDiversity == 1 ? "left" :
   ai->config.rxDiversity == 2 ? "right" : "both",
   le16_to_cpu(ai->config.fragThresh),
   ai->config.authType == AUTH_ENCRYPT ? "encrypt" :
   ai->config.authType == AUTH_SHAREDKEY ? "shared" : "open",
   ai->config.modulation == MOD_DEFAULT ? "default" :
   ai->config.modulation == MOD_CCK ? "cck" :
   ai->config.modulation == MOD_MOK ? "mok" : "error",
   ai->config.preamble == PREAMBLE_AUTO ? "auto" :
   ai->config.preamble == PREAMBLE_LONG ? "long" :
   ai->config.preamble == PREAMBLE_SHORT ? "short" : "error"
  );
 data->readlen = strlen( data->rbuffer );
 return 0;
}
