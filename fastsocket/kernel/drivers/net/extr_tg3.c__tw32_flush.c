
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tg3 {int (* read32 ) (struct tg3*,scalar_t__) ;int (* write32 ) (struct tg3*,scalar_t__,scalar_t__) ;} ;


 int ICH_WORKAROUND ;
 int PCIX_TARGET_HWBUG ;
 int stub1 (struct tg3*,scalar_t__,scalar_t__) ;
 int stub2 (struct tg3*,scalar_t__) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_write32 (struct tg3*,scalar_t__,scalar_t__) ;
 int udelay (scalar_t__) ;

__attribute__((used)) static void _tw32_flush(struct tg3 *tp, u32 off, u32 val, u32 usec_wait)
{
 if (tg3_flag(tp, PCIX_TARGET_HWBUG) || tg3_flag(tp, ICH_WORKAROUND))

  tp->write32(tp, off, val);
 else {

  tg3_write32(tp, off, val);
  if (usec_wait)
   udelay(usec_wait);
  tp->read32(tp, off);
 }



 if (usec_wait)
  udelay(usec_wait);
}
