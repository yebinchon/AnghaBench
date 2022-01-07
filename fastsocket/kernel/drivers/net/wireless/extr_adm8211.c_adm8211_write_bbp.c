
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ieee80211_hw {int wiphy; struct adm8211_priv* priv; } ;
struct adm8211_priv {int bbp_type; } ;


 int ADM8211_BBPCTL_CCAP ;
 int ADM8211_BBPCTL_MMISEL ;
 int ADM8211_BBPCTL_RD ;
 int ADM8211_BBPCTL_TXCE ;
 int ADM8211_BBPCTL_WR ;
 int ADM8211_CSR_READ (int ) ;
 int ADM8211_CSR_WRITE (int ,int) ;



 int BBPCTL ;
 int ETIMEDOUT ;
 int msleep (int) ;
 int wiphy_debug (int ,char*,int,int,int) ;

__attribute__((used)) static int adm8211_write_bbp(struct ieee80211_hw *dev, u8 addr, u8 data)
{
 struct adm8211_priv *priv = dev->priv;
 unsigned int timeout;
 u32 reg;

 timeout = 10;
 while (timeout > 0) {
  reg = ADM8211_CSR_READ(BBPCTL);
  if (!(reg & (ADM8211_BBPCTL_WR | ADM8211_BBPCTL_RD)))
   break;
  timeout--;
  msleep(2);
 }

 if (timeout == 0) {
  wiphy_debug(dev->wiphy,
       "adm8211_write_bbp(%d,%d) failed prewrite (reg=0x%08x)\n",
       addr, data, reg);
  return -ETIMEDOUT;
 }

 switch (priv->bbp_type) {
 case 129:
  reg = ADM8211_BBPCTL_MMISEL;
  break;
 case 128:
  reg = (0x20 << 24) | ADM8211_BBPCTL_TXCE | ADM8211_BBPCTL_CCAP |
        (0x01 << 18);
  break;
 case 130:
  reg = (0x20 << 24) | ADM8211_BBPCTL_TXCE | ADM8211_BBPCTL_CCAP |
        (0x05 << 18);
  break;
 }
 reg |= ADM8211_BBPCTL_WR | (addr << 8) | data;

 ADM8211_CSR_WRITE(BBPCTL, reg);

 timeout = 10;
 while (timeout > 0) {
  reg = ADM8211_CSR_READ(BBPCTL);
  if (!(reg & ADM8211_BBPCTL_WR))
   break;
  timeout--;
  msleep(2);
 }

 if (timeout == 0) {
  ADM8211_CSR_WRITE(BBPCTL, ADM8211_CSR_READ(BBPCTL) &
      ~ADM8211_BBPCTL_WR);
  wiphy_debug(dev->wiphy,
       "adm8211_write_bbp(%d,%d) failed postwrite (reg=0x%08x)\n",
       addr, data, reg);
  return -ETIMEDOUT;
 }

 return 0;
}
