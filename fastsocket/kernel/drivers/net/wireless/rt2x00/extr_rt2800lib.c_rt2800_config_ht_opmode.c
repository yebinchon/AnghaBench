
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rt2x00lib_erp {int ht_opmode; int cts_protection; } ;
struct rt2x00_dev {int dummy; } ;


 int GF20_PROT_CFG ;
 int GF20_PROT_CFG_PROTECT_CTRL ;
 int GF20_PROT_CFG_PROTECT_RATE ;
 int GF40_PROT_CFG ;
 int GF40_PROT_CFG_PROTECT_CTRL ;
 int GF40_PROT_CFG_PROTECT_RATE ;
 int IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT ;
 int IEEE80211_HT_OP_MODE_PROTECTION ;




 int MM20_PROT_CFG ;
 int MM20_PROT_CFG_PROTECT_CTRL ;
 int MM20_PROT_CFG_PROTECT_RATE ;
 int MM40_PROT_CFG ;
 int MM40_PROT_CFG_PROTECT_CTRL ;
 int MM40_PROT_CFG_PROTECT_RATE ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;

__attribute__((used)) static void rt2800_config_ht_opmode(struct rt2x00_dev *rt2x00dev,
        struct rt2x00lib_erp *erp)
{
 bool any_sta_nongf = !!(erp->ht_opmode &
    IEEE80211_HT_OP_MODE_NON_GF_STA_PRSNT);
 u8 protection = erp->ht_opmode & IEEE80211_HT_OP_MODE_PROTECTION;
 u8 mm20_mode, mm40_mode, gf20_mode, gf40_mode;
 u16 mm20_rate, mm40_rate, gf20_rate, gf40_rate;
 u32 reg;


 mm20_rate = gf20_rate = 0x4004;


 mm40_rate = gf40_rate = 0x4084;

 switch (protection) {
 case 130:





  mm20_mode = mm40_mode = gf20_mode = gf40_mode = 0;

  break;
 case 131:





  mm20_mode = gf20_mode = 0;
  mm40_mode = gf40_mode = 2;

  break;
 case 128:
 case 129:




  mm20_mode = mm40_mode = gf20_mode = gf40_mode = 2;





  if (erp->cts_protection) {

   mm20_rate = mm40_rate = 0x0003;
   gf20_rate = gf40_rate = 0x0003;
  }
  break;
 }


 if (any_sta_nongf)
  gf20_mode = gf40_mode = 2;


 rt2800_register_read(rt2x00dev, MM20_PROT_CFG, &reg);
 rt2x00_set_field32(&reg, MM20_PROT_CFG_PROTECT_RATE, mm20_rate);
 rt2x00_set_field32(&reg, MM20_PROT_CFG_PROTECT_CTRL, mm20_mode);
 rt2800_register_write(rt2x00dev, MM20_PROT_CFG, reg);

 rt2800_register_read(rt2x00dev, MM40_PROT_CFG, &reg);
 rt2x00_set_field32(&reg, MM40_PROT_CFG_PROTECT_RATE, mm40_rate);
 rt2x00_set_field32(&reg, MM40_PROT_CFG_PROTECT_CTRL, mm40_mode);
 rt2800_register_write(rt2x00dev, MM40_PROT_CFG, reg);

 rt2800_register_read(rt2x00dev, GF20_PROT_CFG, &reg);
 rt2x00_set_field32(&reg, GF20_PROT_CFG_PROTECT_RATE, gf20_rate);
 rt2x00_set_field32(&reg, GF20_PROT_CFG_PROTECT_CTRL, gf20_mode);
 rt2800_register_write(rt2x00dev, GF20_PROT_CFG, reg);

 rt2800_register_read(rt2x00dev, GF40_PROT_CFG, &reg);
 rt2x00_set_field32(&reg, GF40_PROT_CFG_PROTECT_RATE, gf40_rate);
 rt2x00_set_field32(&reg, GF40_PROT_CFG_PROTECT_CTRL, gf40_mode);
 rt2800_register_write(rt2x00dev, GF40_PROT_CFG, reg);
}
