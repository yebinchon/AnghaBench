
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int pci_fn; } ;


 int APE_LOCK_GRANT_DRIVER ;
 scalar_t__ ASIC_REV_5761 ;
 int ENABLE_APE ;

 int TG3_APE_LOCK_GRANT ;






 int TG3_APE_PER_LOCK_GRANT ;
 int tg3_ape_write32 (struct tg3*,int,int) ;
 scalar_t__ tg3_asic_rev (struct tg3*) ;
 int tg3_flag (struct tg3*,int ) ;

__attribute__((used)) static void tg3_ape_unlock(struct tg3 *tp, int locknum)
{
 u32 gnt, bit;

 if (!tg3_flag(tp, ENABLE_APE))
  return;

 switch (locknum) {
 case 134:
  if (tg3_asic_rev(tp) == ASIC_REV_5761)
   return;
 case 133:
 case 132:
  if (!tp->pci_fn)
   bit = APE_LOCK_GRANT_DRIVER;
  else
   bit = 1 << tp->pci_fn;
  break;
 case 131:
 case 130:
 case 129:
 case 128:
  bit = APE_LOCK_GRANT_DRIVER;
  break;
 default:
  return;
 }

 if (tg3_asic_rev(tp) == ASIC_REV_5761)
  gnt = TG3_APE_LOCK_GRANT;
 else
  gnt = TG3_APE_PER_LOCK_GRANT;

 tg3_ape_write32(tp, gnt + 4 * locknum, bit);
}
