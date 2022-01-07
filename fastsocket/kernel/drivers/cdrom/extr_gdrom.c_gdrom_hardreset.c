
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int dummy; } ;


 int GDROM_RESET_REG ;
 int ctrl_inl (int) ;
 int ctrl_outl (int,int ) ;

__attribute__((used)) static int gdrom_hardreset(struct cdrom_device_info *cd_info)
{
 int count;
 ctrl_outl(0x1fffff, GDROM_RESET_REG);
 for (count = 0xa0000000; count < 0xa0200000; count += 4)
  ctrl_inl(count);
 return 0;
}
