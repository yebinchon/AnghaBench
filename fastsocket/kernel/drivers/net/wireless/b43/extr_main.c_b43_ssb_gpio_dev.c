
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ssb_device {int dummy; } ;
struct TYPE_8__ {struct ssb_device* dev; } ;
struct TYPE_7__ {struct ssb_device* dev; } ;
struct ssb_bus {TYPE_4__ chipco; TYPE_3__ pcicore; } ;
struct b43_wldev {TYPE_2__* dev; } ;
struct TYPE_6__ {TYPE_1__* sdev; } ;
struct TYPE_5__ {struct ssb_bus* bus; } ;



__attribute__((used)) static struct ssb_device *b43_ssb_gpio_dev(struct b43_wldev *dev)
{
 struct ssb_bus *bus = dev->dev->sdev->bus;




 return bus->chipco.dev;

}
