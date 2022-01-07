
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cb710_slot {int dummy; } ;


 int CB710_DUMP_REGS_MMC ;
 int CB710_MMC_STATUS_PORT ;
 int ETIMEDOUT ;
 int cb710_check_event (struct cb710_slot*,int ) ;
 int cb710_dump_regs (int ,int ) ;
 int cb710_read_port_32 (struct cb710_slot*,int ) ;
 int cb710_slot_dev (struct cb710_slot*) ;
 int cb710_slot_to_chip (struct cb710_slot*) ;
 int dev_dbg (int ,char*,unsigned int,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int cb710_wait_for_event(struct cb710_slot *slot, u8 what)
{
 int err = 0;
 unsigned limit = 2000000;






 while (!(err = cb710_check_event(slot, what))) {
  if (!--limit) {
   cb710_dump_regs(cb710_slot_to_chip(slot),
    CB710_DUMP_REGS_MMC);
   err = -ETIMEDOUT;
   break;
  }
  udelay(1);
 }
 return err < 0 ? err : 0;
}
