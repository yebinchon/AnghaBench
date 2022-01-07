
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dev; } ;


 scalar_t__ ASIC_REV_5906 ;
 scalar_t__ CHIPREV_ID_57765_A0 ;
 int ENODEV ;
 int IS_SSB_CORE ;
 int NIC_SRAM_FIRMWARE_MBOX ;
 int NIC_SRAM_FIRMWARE_MBOX_MAGIC1 ;
 int NO_FWARE_REPORTED ;
 int VCPU_STATUS ;
 int VCPU_STATUS_INIT_DONE ;
 int mdelay (int) ;
 int netdev_info (int ,char*) ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;
 scalar_t__ tg3_chip_rev_id (struct tg3*) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_flag_set (struct tg3*,int ) ;
 int tg3_read_mem (struct tg3*,int ,int *) ;
 int tr32 (int ) ;
 int udelay (int) ;

__attribute__((used)) static int tg3_poll_fw(struct tg3 *tp)
{
 int i;
 u32 val;

 if (tg3_flag(tp, NO_FWARE_REPORTED))
  return 0;

 if (tg3_flag(tp, IS_SSB_CORE)) {

  return 0;
 }

 if (tg3_asic_rev(tp) == ASIC_REV_5906) {

  for (i = 0; i < 200; i++) {
   if (tr32(VCPU_STATUS) & VCPU_STATUS_INIT_DONE)
    return 0;
   udelay(100);
  }
  return -ENODEV;
 }


 for (i = 0; i < 100000; i++) {
  tg3_read_mem(tp, NIC_SRAM_FIRMWARE_MBOX, &val);
  if (val == ~NIC_SRAM_FIRMWARE_MBOX_MAGIC1)
   break;
  udelay(10);
 }






 if (i >= 100000 && !tg3_flag(tp, NO_FWARE_REPORTED)) {
  tg3_flag_set(tp, NO_FWARE_REPORTED);

  netdev_info(tp->dev, "No firmware running\n");
 }

 if (tg3_chip_rev_id(tp) == CHIPREV_ID_57765_A0) {



  mdelay(10);
 }

 return 0;
}
