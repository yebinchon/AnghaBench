
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int release; int * bus; int * parent; } ;
struct bttv_sub_device {int list; TYPE_2__ dev; struct bttv_core* core; } ;
struct bttv_core {int subs; int nr; TYPE_1__* pci; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bttv_sub_bus_type ;
 int dev_name (TYPE_2__*) ;
 int dev_set_name (TYPE_2__*,char*,char*,int ) ;
 int device_register (TYPE_2__*) ;
 int kfree (struct bttv_sub_device*) ;
 struct bttv_sub_device* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int printk (char*,int ,int ) ;
 int release_sub_device ;

int bttv_sub_add_device(struct bttv_core *core, char *name)
{
 struct bttv_sub_device *sub;
 int err;

 sub = kzalloc(sizeof(*sub),GFP_KERNEL);
 if (((void*)0) == sub)
  return -ENOMEM;

 sub->core = core;
 sub->dev.parent = &core->pci->dev;
 sub->dev.bus = &bttv_sub_bus_type;
 sub->dev.release = release_sub_device;
 dev_set_name(&sub->dev, "%s%d", name, core->nr);

 err = device_register(&sub->dev);
 if (0 != err) {
  kfree(sub);
  return err;
 }
 printk("bttv%d: add subdevice \"%s\"\n", core->nr, dev_name(&sub->dev));
 list_add_tail(&sub->list,&core->subs);
 return 0;
}
