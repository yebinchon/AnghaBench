
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tifm_dev {int dummy; } ;
struct TYPE_2__ {struct device* parent; int * class; } ;
struct tifm_adapter {unsigned int num_sockets; int lock; TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 int device_initialize (TYPE_1__*) ;
 struct tifm_adapter* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int tifm_adapter_class ;

struct tifm_adapter *tifm_alloc_adapter(unsigned int num_sockets,
     struct device *dev)
{
 struct tifm_adapter *fm;

 fm = kzalloc(sizeof(struct tifm_adapter)
       + sizeof(struct tifm_dev*) * num_sockets, GFP_KERNEL);
 if (fm) {
  fm->dev.class = &tifm_adapter_class;
  fm->dev.parent = dev;
  device_initialize(&fm->dev);
  spin_lock_init(&fm->lock);
  fm->num_sockets = num_sockets;
 }
 return fm;
}
