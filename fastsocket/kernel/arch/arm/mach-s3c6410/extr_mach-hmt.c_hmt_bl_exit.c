
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int S3C64XX_GPB (int) ;
 int gpio_free (int ) ;

__attribute__((used)) static void hmt_bl_exit(struct device *dev)
{
 gpio_free(S3C64XX_GPB(4));
}
