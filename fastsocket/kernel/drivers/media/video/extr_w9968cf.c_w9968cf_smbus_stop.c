
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9968cf_device {int dummy; } ;


 scalar_t__ w9968cf_write_sb (struct w9968cf_device*,int) ;

__attribute__((used)) static int w9968cf_smbus_stop(struct w9968cf_device* cam)
{
 int err = 0;

 err += w9968cf_write_sb(cam, 0x0011);
 err += w9968cf_write_sb(cam, 0x0013);

 return err;
}
