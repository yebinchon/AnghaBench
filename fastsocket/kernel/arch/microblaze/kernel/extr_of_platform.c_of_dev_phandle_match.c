
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
typedef scalar_t__ phandle ;
struct TYPE_4__ {TYPE_1__* node; } ;
struct TYPE_3__ {scalar_t__ linux_phandle; } ;


 TYPE_2__* to_of_device (struct device*) ;

__attribute__((used)) static int of_dev_phandle_match(struct device *dev, void *data)
{
 phandle *ph = data;
 return to_of_device(dev)->node->linux_phandle == *ph;
}
