
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2410_GPF (int) ;
 int S3C2410_GPG (int) ;
 int s3c_pm_check_resume_pin (int,int) ;

void s3c_pm_configure_extint(void)
{
 int pin;






 for (pin = S3C2410_GPF(0); pin <= S3C2410_GPF(7); pin++) {
  s3c_pm_check_resume_pin(pin, pin - S3C2410_GPF(0));
 }

 for (pin = S3C2410_GPG(0); pin <= S3C2410_GPG(7); pin++) {
  s3c_pm_check_resume_pin(pin, (pin - S3C2410_GPG(0))+8);
 }
}
