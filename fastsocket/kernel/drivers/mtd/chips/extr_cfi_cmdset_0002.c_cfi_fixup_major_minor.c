
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_private {scalar_t__ mfr; int id; } ;
struct cfi_pri_amdstd {char MajorVersion; } ;


 scalar_t__ CFI_MFR_SAMSUNG ;

__attribute__((used)) static void cfi_fixup_major_minor(struct cfi_private *cfi,
      struct cfi_pri_amdstd *extp)
{
 if (cfi->mfr == CFI_MFR_SAMSUNG && cfi->id == 0x257e &&
     extp->MajorVersion == '0')
  extp->MajorVersion = '1';
}
