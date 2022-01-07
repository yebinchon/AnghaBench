
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00lib_erp {int basic_rates; int beacon_int; int slot_time; int sifs; int eifs; int short_preamble; } ;
struct rt2x00_dev {int dummy; } ;


 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int BSS_CHANGED_ERP_SLOT ;
 int IEEE80211_HEADER ;
 int MAC_CSR8 ;
 int MAC_CSR8_EIFS ;
 int MAC_CSR8_SIFS ;
 int MAC_CSR8_SIFS_AFTER_RX_OFDM ;
 int MAC_CSR9 ;
 int MAC_CSR9_SLOT_TIME ;
 int TXRX_CSR0 ;
 int TXRX_CSR0_RX_ACK_TIMEOUT ;
 int TXRX_CSR0_TSF_OFFSET ;
 int TXRX_CSR4 ;
 int TXRX_CSR4_AUTORESPOND_ENABLE ;
 int TXRX_CSR4_AUTORESPOND_PREAMBLE ;
 int TXRX_CSR5 ;
 int TXRX_CSR9 ;
 int TXRX_CSR9_BEACON_INTERVAL ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00usb_register_read (struct rt2x00_dev*,int ,int*) ;
 int rt2x00usb_register_write (struct rt2x00_dev*,int ,int) ;

__attribute__((used)) static void rt73usb_config_erp(struct rt2x00_dev *rt2x00dev,
          struct rt2x00lib_erp *erp,
          u32 changed)
{
 u32 reg;

 rt2x00usb_register_read(rt2x00dev, TXRX_CSR0, &reg);
 rt2x00_set_field32(&reg, TXRX_CSR0_RX_ACK_TIMEOUT, 0x32);
 rt2x00_set_field32(&reg, TXRX_CSR0_TSF_OFFSET, IEEE80211_HEADER);
 rt2x00usb_register_write(rt2x00dev, TXRX_CSR0, reg);

 if (changed & BSS_CHANGED_ERP_PREAMBLE) {
  rt2x00usb_register_read(rt2x00dev, TXRX_CSR4, &reg);
  rt2x00_set_field32(&reg, TXRX_CSR4_AUTORESPOND_ENABLE, 1);
  rt2x00_set_field32(&reg, TXRX_CSR4_AUTORESPOND_PREAMBLE,
       !!erp->short_preamble);
  rt2x00usb_register_write(rt2x00dev, TXRX_CSR4, reg);
 }

 if (changed & BSS_CHANGED_BASIC_RATES)
  rt2x00usb_register_write(rt2x00dev, TXRX_CSR5,
      erp->basic_rates);

 if (changed & BSS_CHANGED_BEACON_INT) {
  rt2x00usb_register_read(rt2x00dev, TXRX_CSR9, &reg);
  rt2x00_set_field32(&reg, TXRX_CSR9_BEACON_INTERVAL,
       erp->beacon_int * 16);
  rt2x00usb_register_write(rt2x00dev, TXRX_CSR9, reg);
 }

 if (changed & BSS_CHANGED_ERP_SLOT) {
  rt2x00usb_register_read(rt2x00dev, MAC_CSR9, &reg);
  rt2x00_set_field32(&reg, MAC_CSR9_SLOT_TIME, erp->slot_time);
  rt2x00usb_register_write(rt2x00dev, MAC_CSR9, reg);

  rt2x00usb_register_read(rt2x00dev, MAC_CSR8, &reg);
  rt2x00_set_field32(&reg, MAC_CSR8_SIFS, erp->sifs);
  rt2x00_set_field32(&reg, MAC_CSR8_SIFS_AFTER_RX_OFDM, 3);
  rt2x00_set_field32(&reg, MAC_CSR8_EIFS, erp->eifs);
  rt2x00usb_register_write(rt2x00dev, MAC_CSR8, reg);
 }
}
