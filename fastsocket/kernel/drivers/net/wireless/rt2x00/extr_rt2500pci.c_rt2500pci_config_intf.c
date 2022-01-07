
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00intf_conf {unsigned int sync; int bssid; int mac; } ;
struct rt2x00_intf {int dummy; } ;
struct rt2x00_dev {struct data_queue* bcn; } ;
struct data_queue {unsigned int cw_min; } ;


 int BCNCSR1 ;
 int BCNCSR1_BEACON_CWMIN ;
 int BCNCSR1_PRELOAD ;
 unsigned int const CONFIG_UPDATE_BSSID ;
 unsigned int const CONFIG_UPDATE_MAC ;
 unsigned int const CONFIG_UPDATE_TYPE ;
 int CSR14 ;
 int CSR14_TSF_SYNC ;
 int CSR3 ;
 int CSR5 ;
 unsigned int GET_DURATION (int ,int) ;
 int IEEE80211_HEADER ;
 unsigned int PREAMBLE ;
 int rt2x00_set_field32 (int *,int ,unsigned int) ;
 int rt2x00mmio_register_multiwrite (struct rt2x00_dev*,int ,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt2500pci_config_intf(struct rt2x00_dev *rt2x00dev,
      struct rt2x00_intf *intf,
      struct rt2x00intf_conf *conf,
      const unsigned int flags)
{
 struct data_queue *queue = rt2x00dev->bcn;
 unsigned int bcn_preload;
 u32 reg;

 if (flags & CONFIG_UPDATE_TYPE) {



  bcn_preload = PREAMBLE + GET_DURATION(IEEE80211_HEADER, 20);
  rt2x00mmio_register_read(rt2x00dev, BCNCSR1, &reg);
  rt2x00_set_field32(&reg, BCNCSR1_PRELOAD, bcn_preload);
  rt2x00_set_field32(&reg, BCNCSR1_BEACON_CWMIN, queue->cw_min);
  rt2x00mmio_register_write(rt2x00dev, BCNCSR1, reg);




  rt2x00mmio_register_read(rt2x00dev, CSR14, &reg);
  rt2x00_set_field32(&reg, CSR14_TSF_SYNC, conf->sync);
  rt2x00mmio_register_write(rt2x00dev, CSR14, reg);
 }

 if (flags & CONFIG_UPDATE_MAC)
  rt2x00mmio_register_multiwrite(rt2x00dev, CSR3,
           conf->mac, sizeof(conf->mac));

 if (flags & CONFIG_UPDATE_BSSID)
  rt2x00mmio_register_multiwrite(rt2x00dev, CSR5,
           conf->bssid, sizeof(conf->bssid));
}
