
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_device {int dummy; } ;
typedef int * ata_xlat_func_t ;
 int * ata_scsi_flush_xlat ;
 int * ata_scsi_pass_thru ;
 int * ata_scsi_rw_xlat ;
 int * ata_scsi_start_stop_xlat ;
 int * ata_scsi_verify_xlat ;
 int * ata_scsi_write_same_xlat ;
 int ata_try_flush_cache (struct ata_device*) ;

__attribute__((used)) static inline ata_xlat_func_t ata_get_xlat_func(struct ata_device *dev, u8 cmd)
{
 switch (cmd) {
 case 135:
 case 137:
 case 136:

 case 128:
 case 130:
 case 129:
  return ata_scsi_rw_xlat;

 case 0x93 :
  return ata_scsi_write_same_xlat;

 case 133:
  if (ata_try_flush_cache(dev))
   return ata_scsi_flush_xlat;
  break;

 case 132:
 case 131:
  return ata_scsi_verify_xlat;

 case 139:
 case 138:
  return ata_scsi_pass_thru;

 case 134:
  return ata_scsi_start_stop_xlat;
 }

 return ((void*)0);
}
