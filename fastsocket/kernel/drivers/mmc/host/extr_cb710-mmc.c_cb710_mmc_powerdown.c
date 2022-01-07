
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb710_slot {int dummy; } ;


 int CB710_MMC_CONFIG1_PORT ;
 int CB710_MMC_CONFIG3_PORT ;
 int cb710_modify_port_8 (struct cb710_slot*,int ,int ,int) ;

__attribute__((used)) static void cb710_mmc_powerdown(struct cb710_slot *slot)
{
 cb710_modify_port_8(slot, CB710_MMC_CONFIG1_PORT, 0, 0x81);
 cb710_modify_port_8(slot, CB710_MMC_CONFIG3_PORT, 0, 0x80);
}
