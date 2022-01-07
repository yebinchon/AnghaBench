
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_hw {int wiphy; struct adm8211_priv* priv; } ;
struct adm8211_priv {scalar_t__ bbp_type; int specific_bbptype; int transceiver_type; TYPE_2__* eeprom; TYPE_1__* pdev; } ;
struct TYPE_4__ {int major_version; int cr28; int cr29; } ;
struct TYPE_3__ {int revision; } ;



 int ADM8211_BBPCTL_TYPE ;



 int ADM8211_CSR_READ (int ) ;
 int ADM8211_CSR_WRITE (int ,int) ;
 int ADM8211_SYNCTL_SELCAL ;
 int ADM8211_SYNRF_PE1 ;
 int ADM8211_SYNRF_PHYRST ;
 int ADM8211_SYNRF_SELRF ;
 scalar_t__ ADM8211_TYPE_ADMTEK ;
 scalar_t__ ADM8211_TYPE_INTERSIL ;
 scalar_t__ ADM8211_TYPE_RFMD ;
 int BBPCTL ;
 int MACTEST ;
 int MMIRD0 ;
 int MMIRD1 ;
 int MMIWA ;
 int RF3000_CCA_CTRL ;
 int RF3000_DIVERSITY__RSSI ;
 int RF3000_HIGH_GAIN_CALIB ;
 int RF3000_LOW_GAIN_CALIB ;
 int RF3000_TX_VAR_GAIN__TX_LEN_EXT ;
 int SYNCTL ;
 int SYNRF ;
 int adm8211_hw_init_syn (struct ieee80211_hw*) ;
 int adm8211_write_bbp (struct ieee80211_hw*,int,int) ;
 int msleep (int) ;
 int wiphy_debug (int ,char*,scalar_t__) ;

__attribute__((used)) static int adm8211_hw_init_bbp(struct ieee80211_hw *dev)
{
 struct adm8211_priv *priv = dev->priv;
 u32 reg;


 if (priv->bbp_type == ADM8211_TYPE_INTERSIL) {
  ADM8211_CSR_WRITE(MMIWA, 0x100E0C0A);
  ADM8211_CSR_WRITE(MMIRD0, 0x00007C7E);
  ADM8211_CSR_WRITE(MMIRD1, 0x00100000);
 } else if (priv->bbp_type == ADM8211_TYPE_RFMD ||
     priv->bbp_type == ADM8211_TYPE_ADMTEK) {

  switch (priv->specific_bbptype) {
  case 137:
  case 136:
   ADM8211_CSR_WRITE(MMIWA, 0x00009101);
   ADM8211_CSR_WRITE(MMIRD0, 0x00000301);
   break;

  case 138:
   ADM8211_CSR_WRITE(MMIWA, 0x00008903);
   ADM8211_CSR_WRITE(MMIRD0, 0x00001716);

   reg = ADM8211_CSR_READ(BBPCTL);
   reg &= ~ADM8211_BBPCTL_TYPE;
   reg |= 0x5 << 18;
   ADM8211_CSR_WRITE(BBPCTL, reg);
   break;
  }

  switch (priv->pdev->revision) {
  case 131:
   if (priv->transceiver_type == 129 ||
       priv->transceiver_type == 128 ||
       priv->transceiver_type == 130)
    ADM8211_CSR_WRITE(SYNCTL, 0x1 << 22);
   else if (priv->transceiver_type == 135 ||
     priv->transceiver_type == 139)
    ADM8211_CSR_WRITE(SYNCTL, 0x3 << 22);
   break;

  case 132:
   reg = ADM8211_CSR_READ(MMIRD1);
   reg &= 0x0000FFFF;
   reg |= 0x7e100000;
   ADM8211_CSR_WRITE(MMIRD1, reg);
   break;

  case 134:
  case 133:
  default:
   ADM8211_CSR_WRITE(MMIRD1, 0x7e100000);
   break;
  }


  ADM8211_CSR_WRITE(MACTEST, 0x800);
 }

 adm8211_hw_init_syn(dev);


 ADM8211_CSR_WRITE(SYNRF, ADM8211_SYNRF_SELRF |
     ADM8211_SYNRF_PE1 | ADM8211_SYNRF_PHYRST);
 ADM8211_CSR_READ(SYNRF);
 msleep(20);


 if (priv->bbp_type == ADM8211_TYPE_RFMD) {
  adm8211_write_bbp(dev, RF3000_CCA_CTRL, 0x80);

  adm8211_write_bbp(dev, RF3000_DIVERSITY__RSSI, 0x80);
  adm8211_write_bbp(dev, RF3000_TX_VAR_GAIN__TX_LEN_EXT, 0x74);
  adm8211_write_bbp(dev, RF3000_LOW_GAIN_CALIB, 0x38);
  adm8211_write_bbp(dev, RF3000_HIGH_GAIN_CALIB, 0x40);

  if (priv->eeprom->major_version < 2) {
   adm8211_write_bbp(dev, 0x1c, 0x00);
   adm8211_write_bbp(dev, 0x1d, 0x80);
  } else {
   if (priv->pdev->revision == 132)
    adm8211_write_bbp(dev, 0x1c, priv->eeprom->cr28);
   else
    adm8211_write_bbp(dev, 0x1c, 0x00);

   adm8211_write_bbp(dev, 0x1d, priv->eeprom->cr29);
  }
 } else if (priv->bbp_type == ADM8211_TYPE_ADMTEK) {

  adm8211_write_bbp(dev, 0x00, 0xFF);

  adm8211_write_bbp(dev, 0x07, 0x0A);


  switch (priv->transceiver_type) {
  case 129:
  case 128:
   adm8211_write_bbp(dev, 0x00, 0x00);
   adm8211_write_bbp(dev, 0x01, 0x00);
   adm8211_write_bbp(dev, 0x02, 0x00);
   adm8211_write_bbp(dev, 0x03, 0x00);
   adm8211_write_bbp(dev, 0x06, 0x0f);
   adm8211_write_bbp(dev, 0x09, 0x00);
   adm8211_write_bbp(dev, 0x0a, 0x00);
   adm8211_write_bbp(dev, 0x0b, 0x00);
   adm8211_write_bbp(dev, 0x0c, 0x00);
   adm8211_write_bbp(dev, 0x0f, 0xAA);
   adm8211_write_bbp(dev, 0x10, 0x8c);
   adm8211_write_bbp(dev, 0x11, 0x43);
   adm8211_write_bbp(dev, 0x18, 0x40);
   adm8211_write_bbp(dev, 0x20, 0x23);
   adm8211_write_bbp(dev, 0x21, 0x02);
   adm8211_write_bbp(dev, 0x22, 0x28);
   adm8211_write_bbp(dev, 0x23, 0x30);
   adm8211_write_bbp(dev, 0x24, 0x2d);
   adm8211_write_bbp(dev, 0x28, 0x35);
   adm8211_write_bbp(dev, 0x2a, 0x8c);
   adm8211_write_bbp(dev, 0x2b, 0x81);
   adm8211_write_bbp(dev, 0x2c, 0x44);
   adm8211_write_bbp(dev, 0x2d, 0x0A);
   adm8211_write_bbp(dev, 0x29, 0x40);
   adm8211_write_bbp(dev, 0x60, 0x08);
   adm8211_write_bbp(dev, 0x64, 0x01);
   break;

  case 135:
   adm8211_write_bbp(dev, 0x00, 0x00);
   adm8211_write_bbp(dev, 0x01, 0x00);
   adm8211_write_bbp(dev, 0x02, 0x00);
   adm8211_write_bbp(dev, 0x03, 0x00);
   adm8211_write_bbp(dev, 0x06, 0x0f);
   adm8211_write_bbp(dev, 0x09, 0x05);
   adm8211_write_bbp(dev, 0x0a, 0x02);
   adm8211_write_bbp(dev, 0x0b, 0x00);
   adm8211_write_bbp(dev, 0x0c, 0x0f);
   adm8211_write_bbp(dev, 0x0f, 0x55);
   adm8211_write_bbp(dev, 0x10, 0x8d);
   adm8211_write_bbp(dev, 0x11, 0x43);
   adm8211_write_bbp(dev, 0x18, 0x4a);
   adm8211_write_bbp(dev, 0x20, 0x20);
   adm8211_write_bbp(dev, 0x21, 0x02);
   adm8211_write_bbp(dev, 0x22, 0x23);
   adm8211_write_bbp(dev, 0x23, 0x30);
   adm8211_write_bbp(dev, 0x24, 0x2d);
   adm8211_write_bbp(dev, 0x2a, 0x8c);
   adm8211_write_bbp(dev, 0x2b, 0x81);
   adm8211_write_bbp(dev, 0x2c, 0x44);
   adm8211_write_bbp(dev, 0x29, 0x4a);
   adm8211_write_bbp(dev, 0x60, 0x2b);
   adm8211_write_bbp(dev, 0x64, 0x01);
   break;

  case 139:
   adm8211_write_bbp(dev, 0x00, 0x00);
   adm8211_write_bbp(dev, 0x01, 0x00);
   adm8211_write_bbp(dev, 0x02, 0x00);
   adm8211_write_bbp(dev, 0x03, 0x00);
   adm8211_write_bbp(dev, 0x06, 0x0f);
   adm8211_write_bbp(dev, 0x07, 0x05);
   adm8211_write_bbp(dev, 0x08, 0x03);
   adm8211_write_bbp(dev, 0x09, 0x00);
   adm8211_write_bbp(dev, 0x0a, 0x00);
   adm8211_write_bbp(dev, 0x0b, 0x00);
   adm8211_write_bbp(dev, 0x0c, 0x10);
   adm8211_write_bbp(dev, 0x0f, 0x55);
   adm8211_write_bbp(dev, 0x10, 0x8d);
   adm8211_write_bbp(dev, 0x11, 0x43);
   adm8211_write_bbp(dev, 0x18, 0x4a);
   adm8211_write_bbp(dev, 0x20, 0x20);
   adm8211_write_bbp(dev, 0x21, 0x02);
   adm8211_write_bbp(dev, 0x22, 0x23);
   adm8211_write_bbp(dev, 0x23, 0x30);
   adm8211_write_bbp(dev, 0x24, 0x2d);
   adm8211_write_bbp(dev, 0x2a, 0xaa);
   adm8211_write_bbp(dev, 0x2b, 0x81);
   adm8211_write_bbp(dev, 0x2c, 0x44);
   adm8211_write_bbp(dev, 0x29, 0xfa);
   adm8211_write_bbp(dev, 0x60, 0x2d);
   adm8211_write_bbp(dev, 0x64, 0x01);
   break;

  case 130:
   break;

  default:
   wiphy_debug(dev->wiphy, "unsupported transceiver %d\n",
        priv->transceiver_type);
   break;
  }
 } else
  wiphy_debug(dev->wiphy, "unsupported BBP %d\n", priv->bbp_type);

 ADM8211_CSR_WRITE(SYNRF, 0);


 reg = ADM8211_CSR_READ(SYNCTL);
 reg |= ADM8211_SYNCTL_SELCAL;
 ADM8211_CSR_WRITE(SYNCTL, reg);

 return 0;
}
