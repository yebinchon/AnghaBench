
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e752x_error_info {int sysbus_ferr; int sysbus_nerr; } ;


 int sysbus_error (int,int,int*,int) ;

__attribute__((used)) static void e752x_check_sysbus(struct e752x_error_info *info,
   int *error_found, int handle_error)
{
 u32 stat32, error32;


 stat32 = info->sysbus_ferr + (info->sysbus_nerr << 16);

 if (stat32 == 0)
  return;

 error32 = (stat32 >> 16) & 0x3ff;
 stat32 = stat32 & 0x3ff;

 if (stat32 & 0x087)
  sysbus_error(1, stat32 & 0x087, error_found, handle_error);

 if (stat32 & 0x378)
  sysbus_error(0, stat32 & 0x378, error_found, handle_error);

 if (error32 & 0x087)
  sysbus_error(1, error32 & 0x087, error_found, handle_error);

 if (error32 & 0x378)
  sysbus_error(0, error32 & 0x378, error_found, handle_error);
}
