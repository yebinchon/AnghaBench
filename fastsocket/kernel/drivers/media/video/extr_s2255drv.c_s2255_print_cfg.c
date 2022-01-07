
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s2255_mode {int bright; int color; int fdec; int scale; int format; } ;
struct s2255_dev {TYPE_1__* udev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int dev_info (struct device*,char*,...) ;

__attribute__((used)) static void s2255_print_cfg(struct s2255_dev *sdev, struct s2255_mode *mode)
{
 struct device *dev = &sdev->udev->dev;
 dev_info(dev, "------------------------------------------------\n");
 dev_info(dev, "format: %d\nscale %d\n", mode->format, mode->scale);
 dev_info(dev, "fdec: %d\ncolor %d\n", mode->fdec, mode->color);
 dev_info(dev, "bright: 0x%x\n", mode->bright);
 dev_info(dev, "------------------------------------------------\n");
}
