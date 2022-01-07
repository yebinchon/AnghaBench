
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb710_slot {int dummy; } ;


 int CB710_MMC_C1_4BIT_DATA_BUS ;
 int CB710_MMC_CONFIG1_PORT ;
 int cb710_modify_port_8 (struct cb710_slot*,int ,int ,int ) ;
 int cb710_slot_dev (struct cb710_slot*) ;
 int dev_dbg (int ,char*,int,char*) ;

__attribute__((used)) static void cb710_mmc_enable_4bit_data(struct cb710_slot *slot, int enable)
{
 dev_dbg(cb710_slot_dev(slot), "configuring %d-data-line%s mode\n",
  enable ? 4 : 1, enable ? "s" : "");
 if (enable)
  cb710_modify_port_8(slot, CB710_MMC_CONFIG1_PORT,
   CB710_MMC_C1_4BIT_DATA_BUS, 0);
 else
  cb710_modify_port_8(slot, CB710_MMC_CONFIG1_PORT,
   0, CB710_MMC_C1_4BIT_DATA_BUS);
}
