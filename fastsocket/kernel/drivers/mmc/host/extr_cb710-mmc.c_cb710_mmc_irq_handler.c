
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;
struct cb710_slot {int dummy; } ;
struct cb710_mmc_reader {int irq_lock; } ;


 int CB710_MMC_CONFIGB_PORT ;
 int CB710_MMC_CONFIG_PORT ;
 int CB710_MMC_IE_CISTATUS_MASK ;
 int CB710_MMC_IE_TEST_MASK ;
 int CB710_MMC_IRQ_ENABLE_PORT ;
 int CB710_MMC_S1_CARD_CHANGED ;
 int CB710_MMC_STATUS1_PORT ;
 int CB710_MMC_STATUS_PORT ;
 int HZ ;
 int __cb710_mmc_enable_irq (struct cb710_slot*,int ,int ) ;
 int cb710_read_port_32 (struct cb710_slot*,int ) ;
 int cb710_slot_dev (struct cb710_slot*) ;
 struct mmc_host* cb710_slot_to_mmc (struct cb710_slot*) ;
 int cb710_write_port_8 (struct cb710_slot*,int ,int) ;
 int dev_dbg (int ,char*,...) ;
 int mmc_detect_change (struct mmc_host*,int) ;
 struct cb710_mmc_reader* mmc_priv (struct mmc_host*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cb710_mmc_irq_handler(struct cb710_slot *slot)
{
 struct mmc_host *mmc = cb710_slot_to_mmc(slot);
 struct cb710_mmc_reader *reader = mmc_priv(mmc);
 u32 status, config1, config2, irqen;

 status = cb710_read_port_32(slot, CB710_MMC_STATUS_PORT);
 irqen = cb710_read_port_32(slot, CB710_MMC_IRQ_ENABLE_PORT);
 config2 = cb710_read_port_32(slot, CB710_MMC_CONFIGB_PORT);
 config1 = cb710_read_port_32(slot, CB710_MMC_CONFIG_PORT);

 dev_dbg(cb710_slot_dev(slot), "interrupt; status: %08X, "
  "ie: %08X, c2: %08X, c1: %08X\n",
  status, irqen, config2, config1);

 if (status & (CB710_MMC_S1_CARD_CHANGED << 8)) {

  cb710_write_port_8(slot, CB710_MMC_STATUS1_PORT,
   CB710_MMC_S1_CARD_CHANGED);
  if ((irqen & CB710_MMC_IE_CISTATUS_MASK)
      == CB710_MMC_IE_CISTATUS_MASK)
   mmc_detect_change(mmc, HZ/5);
 } else {
  dev_dbg(cb710_slot_dev(slot), "unknown interrupt (test)\n");
  spin_lock(&reader->irq_lock);
  __cb710_mmc_enable_irq(slot, 0, CB710_MMC_IE_TEST_MASK);
  spin_unlock(&reader->irq_lock);
 }

 return 1;
}
