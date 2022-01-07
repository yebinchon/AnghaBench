
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AC_ERR_ATA_BUS ;
 unsigned int AC_ERR_DEV ;
 unsigned int AC_ERR_HSM ;
 unsigned int AC_ERR_INVALID ;
 unsigned int AC_ERR_MEDIA ;
 unsigned int AC_ERR_TIMEOUT ;
 int ATA_ECAT_ATA_BUS ;
 int ATA_ECAT_DUBIOUS_NONE ;
 int ATA_ECAT_TOUT_HSM ;
 int ATA_ECAT_UNK_DEV ;
 unsigned int ATA_EFLAG_DUBIOUS_XFER ;
 unsigned int ATA_EFLAG_IS_IO ;

__attribute__((used)) static int ata_eh_categorize_error(unsigned int eflags, unsigned int err_mask,
       int *xfer_ok)
{
 int base = 0;

 if (!(eflags & ATA_EFLAG_DUBIOUS_XFER))
  *xfer_ok = 1;

 if (!*xfer_ok)
  base = ATA_ECAT_DUBIOUS_NONE;

 if (err_mask & AC_ERR_ATA_BUS)
  return base + ATA_ECAT_ATA_BUS;

 if (err_mask & AC_ERR_TIMEOUT)
  return base + ATA_ECAT_TOUT_HSM;

 if (eflags & ATA_EFLAG_IS_IO) {
  if (err_mask & AC_ERR_HSM)
   return base + ATA_ECAT_TOUT_HSM;
  if ((err_mask &
       (AC_ERR_DEV|AC_ERR_MEDIA|AC_ERR_INVALID)) == AC_ERR_DEV)
   return base + ATA_ECAT_UNK_DEV;
 }

 return 0;
}
