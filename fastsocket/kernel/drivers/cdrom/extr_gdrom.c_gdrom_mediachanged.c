
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int dummy; } ;


 int GDROM_ERROR_REG ;
 int ctrl_inb (int ) ;

__attribute__((used)) static int gdrom_mediachanged(struct cdrom_device_info *cd_info, int ignore)
{

 return (ctrl_inb(GDROM_ERROR_REG) & 0xF0) == 0x60;
}
