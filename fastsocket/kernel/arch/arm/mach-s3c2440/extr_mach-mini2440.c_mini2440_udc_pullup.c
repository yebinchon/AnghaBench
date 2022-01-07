
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum s3c2410_udc_cmd_e { ____Placeholder_s3c2410_udc_cmd_e } s3c2410_udc_cmd_e ;


 int S3C2410_GPC (int) ;



 int pr_debug (char*,int) ;
 int s3c2410_gpio_setpin (int ,int) ;

__attribute__((used)) static void mini2440_udc_pullup(enum s3c2410_udc_cmd_e cmd)
{
 pr_debug("udc: pullup(%d)\n", cmd);

 switch (cmd) {
  case 129 :
   s3c2410_gpio_setpin(S3C2410_GPC(5), 1);
   break;
  case 130 :
   s3c2410_gpio_setpin(S3C2410_GPC(5), 0);
   break;
  case 128 :
   break;
  default:
   break;
 }
}
