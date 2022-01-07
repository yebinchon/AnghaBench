
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rt2x00_dev {int dummy; } ;
struct antenna_setup {int rx; int tx; } ;





 int ANTENNA_SW_DIVERSITY ;
 int BBP_R14_RX_ANTENNA ;
 int BBP_R14_RX_IQ_FLIP ;
 int BBP_R2_TX_ANTENNA ;
 int BBP_R2_TX_IQ_FLIP ;
 int BUG_ON (int) ;
 int PHY_CSR5 ;
 int PHY_CSR5_CCK ;
 int PHY_CSR5_CCK_FLIP ;
 int PHY_CSR6 ;
 int PHY_CSR6_OFDM ;
 int PHY_CSR6_OFDM_FLIP ;
 int RF2525E ;
 int RF5222 ;
 int rt2500usb_bbp_read (struct rt2x00_dev*,int,int *) ;
 int rt2500usb_bbp_write (struct rt2x00_dev*,int,int ) ;
 int rt2500usb_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2500usb_register_write (struct rt2x00_dev*,int ,int ) ;
 scalar_t__ rt2x00_rf (struct rt2x00_dev*,int ) ;
 int rt2x00_set_field16 (int *,int ,int) ;
 int rt2x00_set_field8 (int *,int ,int) ;

__attribute__((used)) static void rt2500usb_config_ant(struct rt2x00_dev *rt2x00dev,
     struct antenna_setup *ant)
{
 u8 r2;
 u8 r14;
 u16 csr5;
 u16 csr6;





 BUG_ON(ant->rx == ANTENNA_SW_DIVERSITY ||
        ant->tx == ANTENNA_SW_DIVERSITY);

 rt2500usb_bbp_read(rt2x00dev, 2, &r2);
 rt2500usb_bbp_read(rt2x00dev, 14, &r14);
 rt2500usb_register_read(rt2x00dev, PHY_CSR5, &csr5);
 rt2500usb_register_read(rt2x00dev, PHY_CSR6, &csr6);




 switch (ant->tx) {
 case 128:
  rt2x00_set_field8(&r2, BBP_R2_TX_ANTENNA, 1);
  rt2x00_set_field16(&csr5, PHY_CSR5_CCK, 1);
  rt2x00_set_field16(&csr6, PHY_CSR6_OFDM, 1);
  break;
 case 130:
  rt2x00_set_field8(&r2, BBP_R2_TX_ANTENNA, 0);
  rt2x00_set_field16(&csr5, PHY_CSR5_CCK, 0);
  rt2x00_set_field16(&csr6, PHY_CSR6_OFDM, 0);
  break;
 case 129:
 default:
  rt2x00_set_field8(&r2, BBP_R2_TX_ANTENNA, 2);
  rt2x00_set_field16(&csr5, PHY_CSR5_CCK, 2);
  rt2x00_set_field16(&csr6, PHY_CSR6_OFDM, 2);
  break;
 }




 switch (ant->rx) {
 case 128:
  rt2x00_set_field8(&r14, BBP_R14_RX_ANTENNA, 1);
  break;
 case 130:
  rt2x00_set_field8(&r14, BBP_R14_RX_ANTENNA, 0);
  break;
 case 129:
 default:
  rt2x00_set_field8(&r14, BBP_R14_RX_ANTENNA, 2);
  break;
 }




 if (rt2x00_rf(rt2x00dev, RF2525E) || rt2x00_rf(rt2x00dev, RF5222)) {
  rt2x00_set_field8(&r2, BBP_R2_TX_IQ_FLIP, 1);
  rt2x00_set_field16(&csr5, PHY_CSR5_CCK_FLIP, 1);
  rt2x00_set_field16(&csr6, PHY_CSR6_OFDM_FLIP, 1);




  if (rt2x00_rf(rt2x00dev, RF2525E))
   rt2x00_set_field8(&r14, BBP_R14_RX_IQ_FLIP, 0);
 } else {
  rt2x00_set_field16(&csr5, PHY_CSR5_CCK_FLIP, 0);
  rt2x00_set_field16(&csr6, PHY_CSR6_OFDM_FLIP, 0);
 }

 rt2500usb_bbp_write(rt2x00dev, 2, r2);
 rt2500usb_bbp_write(rt2x00dev, 14, r14);
 rt2500usb_register_write(rt2x00dev, PHY_CSR5, csr5);
 rt2500usb_register_write(rt2x00dev, PHY_CSR6, csr6);
}
