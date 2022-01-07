
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb710_slot {int dummy; } ;


 int CB710_MMC_STATUS0_PORT ;
 int CB710_MMC_STATUS1_PORT ;
 int CB710_MMC_STATUS2_PORT ;
 int cb710_write_port_8 (struct cb710_slot*,int ,int) ;

__attribute__((used)) static void cb710_mmc_reset_events(struct cb710_slot *slot)
{
 cb710_write_port_8(slot, CB710_MMC_STATUS0_PORT, 0xFF);
 cb710_write_port_8(slot, CB710_MMC_STATUS1_PORT, 0xFF);
 cb710_write_port_8(slot, CB710_MMC_STATUS2_PORT, 0xFF);
}
