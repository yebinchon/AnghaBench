
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_ios {int power_mode; scalar_t__ bus_width; int clock; } ;
struct mmc_host {int dummy; } ;
struct cb710_slot {int dummy; } ;
struct cb710_mmc_reader {scalar_t__ last_power_mode; } ;


 int CB710_MMC_IE_TEST_MASK ;
 scalar_t__ MMC_BUS_WIDTH_1 ;



 int cb710_mmc_enable_4bit_data (struct cb710_slot*,int) ;
 int cb710_mmc_enable_irq (struct cb710_slot*,int ,int ) ;
 int cb710_mmc_is_card_inserted (struct cb710_slot*) ;
 int cb710_mmc_powerdown (struct cb710_slot*) ;
 int cb710_mmc_powerup (struct cb710_slot*) ;
 int cb710_mmc_set_clock (struct mmc_host*,int ) ;
 struct cb710_slot* cb710_mmc_to_slot (struct mmc_host*) ;
 int cb710_slot_dev (struct cb710_slot*) ;
 int dev_dbg (int ,char*) ;
 int dev_warn (int ,char*,int) ;
 struct cb710_mmc_reader* mmc_priv (struct mmc_host*) ;
 int udelay (int) ;

__attribute__((used)) static void cb710_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct cb710_slot *slot = cb710_mmc_to_slot(mmc);
 struct cb710_mmc_reader *reader = mmc_priv(mmc);
 int err;

 cb710_mmc_set_clock(mmc, ios->clock);

 if (!cb710_mmc_is_card_inserted(slot)) {
  dev_dbg(cb710_slot_dev(slot),
   "no card inserted - ignoring bus powerup request\n");
  ios->power_mode = 130;
 }

 if (ios->power_mode != reader->last_power_mode)
 switch (ios->power_mode) {
 case 129:
  err = cb710_mmc_powerup(slot);
  if (err) {
   dev_warn(cb710_slot_dev(slot),
    "powerup failed (%d)- retrying\n", err);
   cb710_mmc_powerdown(slot);
   udelay(1);
   err = cb710_mmc_powerup(slot);
   if (err)
    dev_warn(cb710_slot_dev(slot),
     "powerup retry failed (%d) - expect errors\n",
     err);
  }
  reader->last_power_mode = 129;
  break;
 case 130:
  cb710_mmc_powerdown(slot);
  reader->last_power_mode = 130;
  break;
 case 128:
 default:
              ;
 }

 cb710_mmc_enable_4bit_data(slot, ios->bus_width != MMC_BUS_WIDTH_1);

 cb710_mmc_enable_irq(slot, CB710_MMC_IE_TEST_MASK, 0);
}
