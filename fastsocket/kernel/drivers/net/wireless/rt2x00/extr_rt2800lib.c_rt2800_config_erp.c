
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00lib_erp {int basic_rates; int slot_time; int eifs; int beacon_int; scalar_t__ cts_protection; int short_preamble; } ;
struct rt2x00_dev {int dummy; } ;


 int AUTO_RSP_CFG ;
 int AUTO_RSP_CFG_AR_PREAMBLE ;
 int AUTO_RSP_CFG_BAC_ACK_POLICY ;
 int BCN_TIME_CFG ;
 int BCN_TIME_CFG_BEACON_INTERVAL ;
 int BKOFF_SLOT_CFG ;
 int BKOFF_SLOT_CFG_SLOT_TIME ;
 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_ERP_CTS_PROT ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int BSS_CHANGED_ERP_SLOT ;
 int BSS_CHANGED_HT ;
 int HT_BASIC_RATE ;
 int LEGACY_BASIC_RATE ;
 int OFDM_PROT_CFG ;
 int OFDM_PROT_CFG_PROTECT_CTRL ;
 int XIFS_TIME_CFG ;
 int XIFS_TIME_CFG_EIFS ;
 int rt2800_config_ht_opmode (struct rt2x00_dev*,struct rt2x00lib_erp*) ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int*) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int) ;
 int rt2x00_set_field32 (int*,int ,int) ;

void rt2800_config_erp(struct rt2x00_dev *rt2x00dev, struct rt2x00lib_erp *erp,
         u32 changed)
{
 u32 reg;

 if (changed & BSS_CHANGED_ERP_PREAMBLE) {
  rt2800_register_read(rt2x00dev, AUTO_RSP_CFG, &reg);
  rt2x00_set_field32(&reg, AUTO_RSP_CFG_BAC_ACK_POLICY,
       !!erp->short_preamble);
  rt2x00_set_field32(&reg, AUTO_RSP_CFG_AR_PREAMBLE,
       !!erp->short_preamble);
  rt2800_register_write(rt2x00dev, AUTO_RSP_CFG, reg);
 }

 if (changed & BSS_CHANGED_ERP_CTS_PROT) {
  rt2800_register_read(rt2x00dev, OFDM_PROT_CFG, &reg);
  rt2x00_set_field32(&reg, OFDM_PROT_CFG_PROTECT_CTRL,
       erp->cts_protection ? 2 : 0);
  rt2800_register_write(rt2x00dev, OFDM_PROT_CFG, reg);
 }

 if (changed & BSS_CHANGED_BASIC_RATES) {
  rt2800_register_write(rt2x00dev, LEGACY_BASIC_RATE,
      erp->basic_rates);
  rt2800_register_write(rt2x00dev, HT_BASIC_RATE, 0x00008003);
 }

 if (changed & BSS_CHANGED_ERP_SLOT) {
  rt2800_register_read(rt2x00dev, BKOFF_SLOT_CFG, &reg);
  rt2x00_set_field32(&reg, BKOFF_SLOT_CFG_SLOT_TIME,
       erp->slot_time);
  rt2800_register_write(rt2x00dev, BKOFF_SLOT_CFG, reg);

  rt2800_register_read(rt2x00dev, XIFS_TIME_CFG, &reg);
  rt2x00_set_field32(&reg, XIFS_TIME_CFG_EIFS, erp->eifs);
  rt2800_register_write(rt2x00dev, XIFS_TIME_CFG, reg);
 }

 if (changed & BSS_CHANGED_BEACON_INT) {
  rt2800_register_read(rt2x00dev, BCN_TIME_CFG, &reg);
  rt2x00_set_field32(&reg, BCN_TIME_CFG_BEACON_INTERVAL,
       erp->beacon_int * 16);
  rt2800_register_write(rt2x00dev, BCN_TIME_CFG, reg);
 }

 if (changed & BSS_CHANGED_HT)
  rt2800_config_ht_opmode(rt2x00dev, erp);
}
