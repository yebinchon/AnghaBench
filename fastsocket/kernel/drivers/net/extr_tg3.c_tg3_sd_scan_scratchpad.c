
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3_ocir {scalar_t__ signature; int version_flags; } ;
struct tg3 {int dummy; } ;


 int TG3_OCIR_FLAG_ACTIVE ;
 int TG3_OCIR_LEN ;
 scalar_t__ TG3_OCIR_SIG_MAGIC ;
 int TG3_SD_NUM_RECS ;
 int memset (struct tg3_ocir*,int ,int) ;
 int tg3_ape_scratchpad_read (struct tg3*,int*,int,int) ;

__attribute__((used)) static void tg3_sd_scan_scratchpad(struct tg3 *tp, struct tg3_ocir *ocir)
{
 int i;

 for (i = 0; i < TG3_SD_NUM_RECS; i++, ocir++) {
  u32 off = i * TG3_OCIR_LEN, len = TG3_OCIR_LEN;

  tg3_ape_scratchpad_read(tp, (u32 *) ocir, off, len);
  off += len;

  if (ocir->signature != TG3_OCIR_SIG_MAGIC ||
      !(ocir->version_flags & TG3_OCIR_FLAG_ACTIVE))
   memset(ocir, 0, TG3_OCIR_LEN);
 }
}
