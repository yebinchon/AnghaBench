
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ac; } ;
struct raid_template {TYPE_1__ raid_attrs; } ;
struct raid_data {int component_count; int component_list; } ;
struct TYPE_8__ {int * class; int parent; int release; } ;
struct raid_component {int node; TYPE_3__ dev; scalar_t__ num; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int class; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct device* attribute_container_find_class_device (int *,struct device*) ;
 struct raid_data* dev_get_drvdata (struct device*) ;
 int dev_set_name (TYPE_3__*,char*,scalar_t__) ;
 int device_add (TYPE_3__*) ;
 int device_initialize (TYPE_3__*) ;
 int get_device (struct device*) ;
 int kfree (struct raid_component*) ;
 struct raid_component* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int put_device (struct device*) ;
 TYPE_2__ raid_class ;
 int raid_component_release ;

int raid_component_add(struct raid_template *r,struct device *raid_dev,
         struct device *component_dev)
{
 struct device *cdev =
  attribute_container_find_class_device(&r->raid_attrs.ac,
            raid_dev);
 struct raid_component *rc;
 struct raid_data *rd = dev_get_drvdata(cdev);
 int err;

 rc = kzalloc(sizeof(*rc), GFP_KERNEL);
 if (!rc)
  return -ENOMEM;

 INIT_LIST_HEAD(&rc->node);
 device_initialize(&rc->dev);
 rc->dev.release = raid_component_release;
 rc->dev.parent = get_device(component_dev);
 rc->num = rd->component_count++;

 dev_set_name(&rc->dev, "component-%d", rc->num);
 list_add_tail(&rc->node, &rd->component_list);
 rc->dev.class = &raid_class.class;
 err = device_add(&rc->dev);
 if (err)
  goto err_out;

 return 0;

err_out:
 list_del(&rc->node);
 rd->component_count--;
 put_device(component_dev);
 kfree(rc);
 return err;
}
