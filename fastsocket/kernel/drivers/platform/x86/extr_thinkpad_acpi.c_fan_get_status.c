
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EIO ;
 int ENXIO ;


 int acpi_ec_read (int ,int*) ;
 int acpi_evalf (int ,int*,int *,char*) ;
 int fan_quirk1_handle (int*) ;
 int fan_status_access_mode ;
 int fan_status_offset ;
 int gfan_handle ;
 int likely (int*) ;
 int unlikely (int) ;

__attribute__((used)) static int fan_get_status(u8 *status)
{
 u8 s;




 switch (fan_status_access_mode) {
 case 129:


  if (unlikely(!acpi_evalf(gfan_handle, &s, ((void*)0), "d")))
   return -EIO;

  if (likely(status))
   *status = s & 0x07;

  break;

 case 128:

  if (unlikely(!acpi_ec_read(fan_status_offset, &s)))
   return -EIO;

  if (likely(status)) {
   *status = s;
   fan_quirk1_handle(status);
  }

  break;

 default:
  return -ENXIO;
 }

 return 0;
}
