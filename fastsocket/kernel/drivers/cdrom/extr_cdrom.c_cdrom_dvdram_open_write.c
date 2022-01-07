
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int dummy; } ;


 int cdrom_media_erasable (struct cdrom_device_info*) ;

__attribute__((used)) static int cdrom_dvdram_open_write(struct cdrom_device_info *cdi)
{
 int ret = cdrom_media_erasable(cdi);





 if (!ret)
  return 1;

 return 0;
}
