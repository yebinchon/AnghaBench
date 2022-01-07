
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct device {TYPE_1__ kobj; } ;


 int cleanup_glue_dir (struct device*,int ) ;

__attribute__((used)) static void cleanup_device_parent(struct device *dev)
{
 cleanup_glue_dir(dev, dev->kobj.parent);
}
