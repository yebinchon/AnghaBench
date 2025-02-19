
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int EINVAL ;
 int b43_controller_restart (struct b43_wldev*,char*) ;

__attribute__((used)) static int restart_write_file(struct b43_wldev *dev,
         const char *buf, size_t count)
{
 int err = 0;

 if (count > 0 && buf[0] == '1') {
  b43_controller_restart(dev, "manually restarted");
 } else
  err = -EINVAL;

 return err;
}
