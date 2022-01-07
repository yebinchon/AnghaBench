
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int parent; int * class; } ;
struct enclosure_device {int components; TYPE_2__ edev; int node; TYPE_1__* component; struct enclosure_component_callbacks* cb; } ;
struct enclosure_component_callbacks {int dummy; } ;
struct enclosure_component {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int number; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 struct enclosure_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int container_list ;
 int container_list_lock ;
 int dev_set_name (TYPE_2__*,char*,char const*) ;
 int device_register (TYPE_2__*) ;
 int enclosure_class ;
 int get_device (struct device*) ;
 int kfree (struct enclosure_device*) ;
 struct enclosure_device* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int ) ;

struct enclosure_device *
enclosure_register(struct device *dev, const char *name, int components,
     struct enclosure_component_callbacks *cb)
{
 struct enclosure_device *edev =
  kzalloc(sizeof(struct enclosure_device) +
   sizeof(struct enclosure_component)*components,
   GFP_KERNEL);
 int err, i;

 BUG_ON(!cb);

 if (!edev)
  return ERR_PTR(-ENOMEM);

 edev->components = components;

 edev->edev.class = &enclosure_class;
 edev->edev.parent = get_device(dev);
 edev->cb = cb;
 dev_set_name(&edev->edev, "%s", name);
 err = device_register(&edev->edev);
 if (err)
  goto err;

 for (i = 0; i < components; i++)
  edev->component[i].number = -1;

 mutex_lock(&container_list_lock);
 list_add_tail(&edev->node, &container_list);
 mutex_unlock(&container_list_lock);

 return edev;

 err:
 put_device(edev->edev.parent);
 kfree(edev);
 return ERR_PTR(err);
}
