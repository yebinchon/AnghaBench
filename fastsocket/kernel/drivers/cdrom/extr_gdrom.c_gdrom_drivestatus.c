
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int dummy; } ;


 int CDS_DISC_OK ;
 int CDS_DRIVE_NOT_READY ;
 int CDS_NO_INFO ;
 int GDROM_ERROR_REG ;
 char ctrl_inb (int ) ;

__attribute__((used)) static int gdrom_drivestatus(struct cdrom_device_info *cd_info, int ignore)
{

 char sense = ctrl_inb(GDROM_ERROR_REG);
 sense &= 0xF0;
 if (sense == 0)
  return CDS_DISC_OK;
 if (sense == 0x20)
  return CDS_DRIVE_NOT_READY;

 return CDS_NO_INFO;
}
