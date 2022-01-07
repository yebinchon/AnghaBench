
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * class; int * type; } ;
struct input_dev {int node; int h_list; int event_lock; int mutex; TYPE_1__ dev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int device_initialize (TYPE_1__*) ;
 int input_class ;
 int input_dev_type ;
 struct input_dev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

struct input_dev *input_allocate_device(void)
{
 struct input_dev *dev;

 dev = kzalloc(sizeof(struct input_dev), GFP_KERNEL);
 if (dev) {
  dev->dev.type = &input_dev_type;
  dev->dev.class = &input_class;
  device_initialize(&dev->dev);
  mutex_init(&dev->mutex);
  spin_lock_init(&dev->event_lock);
  INIT_LIST_HEAD(&dev->h_list);
  INIT_LIST_HEAD(&dev->node);

  __module_get(THIS_MODULE);
 }

 return dev;
}
