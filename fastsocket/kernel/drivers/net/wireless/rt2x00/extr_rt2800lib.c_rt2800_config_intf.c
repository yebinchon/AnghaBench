
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt2x00intf_conf {int sync; void** bssid; void** mac; } ;
struct rt2x00_intf {int dummy; } ;
struct rt2x00_dev {int dummy; } ;


 int BCN_TIME_CFG ;
 int BCN_TIME_CFG_TSF_SYNC ;
 unsigned int const CONFIG_UPDATE_BSSID ;
 unsigned int const CONFIG_UPDATE_MAC ;
 unsigned int const CONFIG_UPDATE_TYPE ;
 int MAC_ADDR_DW0 ;
 int MAC_ADDR_DW1_UNICAST_TO_ME_MASK ;
 int MAC_BSSID_DW0 ;
 int MAC_BSSID_DW1_BSS_BCN_NUM ;
 int MAC_BSSID_DW1_BSS_ID_MASK ;
 int TBTT_SYNC_CFG ;
 int TBTT_SYNC_CFG_BCN_AIFSN ;
 int TBTT_SYNC_CFG_BCN_CWMIN ;
 int TBTT_SYNC_CFG_BCN_EXP_WIN ;
 int TBTT_SYNC_CFG_TBTT_ADJUST ;
 scalar_t__ TSF_SYNC_AP_NONE ;
 void* cpu_to_le32 (int ) ;
 int is_zero_ether_addr (int const*) ;
 int le32_to_cpu (void*) ;
 int memcpy (void**,void**,int) ;
 int rt2800_register_multiwrite (struct rt2x00_dev*,int ,void**,int) ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;

void rt2800_config_intf(struct rt2x00_dev *rt2x00dev, struct rt2x00_intf *intf,
   struct rt2x00intf_conf *conf, const unsigned int flags)
{
 u32 reg;
 bool update_bssid = 0;

 if (flags & CONFIG_UPDATE_TYPE) {



  rt2800_register_read(rt2x00dev, BCN_TIME_CFG, &reg);
  rt2x00_set_field32(&reg, BCN_TIME_CFG_TSF_SYNC, conf->sync);
  rt2800_register_write(rt2x00dev, BCN_TIME_CFG, reg);

  if (conf->sync == TSF_SYNC_AP_NONE) {



   rt2800_register_read(rt2x00dev, TBTT_SYNC_CFG, &reg);
   rt2x00_set_field32(&reg, TBTT_SYNC_CFG_BCN_CWMIN, 0);
   rt2x00_set_field32(&reg, TBTT_SYNC_CFG_BCN_AIFSN, 1);
   rt2x00_set_field32(&reg, TBTT_SYNC_CFG_BCN_EXP_WIN, 32);
   rt2x00_set_field32(&reg, TBTT_SYNC_CFG_TBTT_ADJUST, 0);
   rt2800_register_write(rt2x00dev, TBTT_SYNC_CFG, reg);
  } else {
   rt2800_register_read(rt2x00dev, TBTT_SYNC_CFG, &reg);
   rt2x00_set_field32(&reg, TBTT_SYNC_CFG_BCN_CWMIN, 4);
   rt2x00_set_field32(&reg, TBTT_SYNC_CFG_BCN_AIFSN, 2);
   rt2x00_set_field32(&reg, TBTT_SYNC_CFG_BCN_EXP_WIN, 32);
   rt2x00_set_field32(&reg, TBTT_SYNC_CFG_TBTT_ADJUST, 16);
   rt2800_register_write(rt2x00dev, TBTT_SYNC_CFG, reg);
  }
 }

 if (flags & CONFIG_UPDATE_MAC) {
  if (flags & CONFIG_UPDATE_TYPE &&
      conf->sync == TSF_SYNC_AP_NONE) {




   memcpy(conf->bssid, conf->mac, sizeof(conf->mac));
   update_bssid = 1;
  }

  if (!is_zero_ether_addr((const u8 *)conf->mac)) {
   reg = le32_to_cpu(conf->mac[1]);
   rt2x00_set_field32(&reg, MAC_ADDR_DW1_UNICAST_TO_ME_MASK, 0xff);
   conf->mac[1] = cpu_to_le32(reg);
  }

  rt2800_register_multiwrite(rt2x00dev, MAC_ADDR_DW0,
           conf->mac, sizeof(conf->mac));
 }

 if ((flags & CONFIG_UPDATE_BSSID) || update_bssid) {
  if (!is_zero_ether_addr((const u8 *)conf->bssid)) {
   reg = le32_to_cpu(conf->bssid[1]);
   rt2x00_set_field32(&reg, MAC_BSSID_DW1_BSS_ID_MASK, 3);
   rt2x00_set_field32(&reg, MAC_BSSID_DW1_BSS_BCN_NUM, 7);
   conf->bssid[1] = cpu_to_le32(reg);
  }

  rt2800_register_multiwrite(rt2x00dev, MAC_BSSID_DW0,
           conf->bssid, sizeof(conf->bssid));
 }
}
