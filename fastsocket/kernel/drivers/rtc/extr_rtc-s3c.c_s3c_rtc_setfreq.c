
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ S3C2410_TICNT ;
 unsigned int S3C2410_TICNT_ENABLE ;
 int is_power_of_2 (int) ;
 unsigned int readb (scalar_t__) ;
 scalar_t__ s3c_rtc_base ;
 int s3c_rtc_pie_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static int s3c_rtc_setfreq(struct device *dev, int freq)
{
 unsigned int tmp;

 if (!is_power_of_2(freq))
  return -EINVAL;

 spin_lock_irq(&s3c_rtc_pie_lock);

 tmp = readb(s3c_rtc_base + S3C2410_TICNT) & S3C2410_TICNT_ENABLE;
 tmp |= (128 / freq)-1;

 writeb(tmp, s3c_rtc_base + S3C2410_TICNT);
 spin_unlock_irq(&s3c_rtc_pie_lock);

 return 0;
}
