
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int model; } ;


 int SONYPI_ACPI_ACTIVE ;



 scalar_t__ camera ;
 scalar_t__ compat ;
 scalar_t__ fnkeyinit ;
 int outb (int,int) ;
 int sonypi_call1 (int) ;
 int sonypi_call2 (int,int) ;
 int sonypi_camera_on () ;
 TYPE_1__ sonypi_device ;
 int sonypi_type1_srs () ;
 int sonypi_type2_srs () ;
 int sonypi_type3_srs () ;

__attribute__((used)) static void sonypi_enable(unsigned int camera_on)
{
 switch (sonypi_device.model) {
 case 130:
  sonypi_type1_srs();
  break;
 case 129:
  sonypi_type2_srs();
  break;
 case 128:
  sonypi_type3_srs();
  break;
 }

 sonypi_call1(0x82);
 sonypi_call2(0x81, 0xff);
 sonypi_call1(compat ? 0x92 : 0x82);


 if (!SONYPI_ACPI_ACTIVE && fnkeyinit)
  outb(0xf0, 0xb2);

 if (camera && camera_on)
  sonypi_camera_on();
}
