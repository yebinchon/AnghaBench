
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum s3c2410_udc_cmd_e { ____Placeholder_s3c2410_udc_cmd_e } s3c2410_udc_cmd_e ;


 int S3C2410_GPB (int) ;



 int s3c2410_gpio_setpin (int ,int) ;

__attribute__((used)) static void n30_udc_pullup(enum s3c2410_udc_cmd_e cmd)
{
 switch (cmd) {
 case 129 :
  s3c2410_gpio_setpin(S3C2410_GPB(3), 1);
  break;
 case 130 :
  s3c2410_gpio_setpin(S3C2410_GPB(3), 0);
  break;
 case 128 :
  break;
 default:
  break;
 }
}
