
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb710_slot {int dummy; } ;


 int CB710_MMC_S3_CARD_DETECTED ;
 int CB710_MMC_STATUS3_PORT ;
 int cb710_read_port_8 (struct cb710_slot*,int ) ;

__attribute__((used)) static int cb710_mmc_is_card_inserted(struct cb710_slot *slot)
{
 return cb710_read_port_8(slot, CB710_MMC_STATUS3_PORT)
  & CB710_MMC_S3_CARD_DETECTED;
}
