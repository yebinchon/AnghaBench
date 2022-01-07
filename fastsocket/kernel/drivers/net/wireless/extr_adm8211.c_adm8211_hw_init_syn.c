
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {int transceiver_type; } ;







 int adm8211_rf_write_syn_al2210l (struct ieee80211_hw*,int,int) ;
 int adm8211_rf_write_syn_max2820 (struct ieee80211_hw*,int,int) ;
 int adm8211_rf_write_syn_rfmd2958 (struct ieee80211_hw*,int,int) ;

__attribute__((used)) static void adm8211_hw_init_syn(struct ieee80211_hw *dev)
{
 struct adm8211_priv *priv = dev->priv;

 switch (priv->transceiver_type) {
 case 129:
 case 128:



  adm8211_rf_write_syn_rfmd2958(dev, 0x1F, 0x00000);

  adm8211_rf_write_syn_rfmd2958(dev, 0x0C, 0x3001F);

  adm8211_rf_write_syn_rfmd2958(dev, 0x01, 0x29C03);

  adm8211_rf_write_syn_rfmd2958(dev, 0x03, 0x1FF6F);

  adm8211_rf_write_syn_rfmd2958(dev, 0x04, 0x29403);

  adm8211_rf_write_syn_rfmd2958(dev, 0x07, 0x1456F);

  adm8211_rf_write_syn_rfmd2958(dev, 0x09,
   (priv->transceiver_type == 129 ?
    0x10050 : 0x00050));

  adm8211_rf_write_syn_rfmd2958(dev, 0x08, 0x3FFF8);
  break;

 case 131:
  adm8211_rf_write_syn_max2820(dev, 0x1, 0x01E);
  adm8211_rf_write_syn_max2820(dev, 0x2, 0x001);
  adm8211_rf_write_syn_max2820(dev, 0x3, 0x054);
  adm8211_rf_write_syn_max2820(dev, 0x4, 0x310);
  adm8211_rf_write_syn_max2820(dev, 0x5, 0x000);
  break;

 case 132:
  adm8211_rf_write_syn_al2210l(dev, 0x0, 0x0196C);
  adm8211_rf_write_syn_al2210l(dev, 0x1, 0x007CB);
  adm8211_rf_write_syn_al2210l(dev, 0x2, 0x3582F);
  adm8211_rf_write_syn_al2210l(dev, 0x3, 0x010A9);
  adm8211_rf_write_syn_al2210l(dev, 0x4, 0x77280);
  adm8211_rf_write_syn_al2210l(dev, 0x5, 0x45641);
  adm8211_rf_write_syn_al2210l(dev, 0x6, 0xEA130);
  adm8211_rf_write_syn_al2210l(dev, 0x7, 0x80000);
  adm8211_rf_write_syn_al2210l(dev, 0x8, 0x7850F);
  adm8211_rf_write_syn_al2210l(dev, 0x9, 0xF900C);
  adm8211_rf_write_syn_al2210l(dev, 0xA, 0x00000);
  adm8211_rf_write_syn_al2210l(dev, 0xB, 0x00000);
  break;

 case 130:
 default:
  break;
 }
}
