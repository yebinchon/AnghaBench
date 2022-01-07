
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct device {char const* name; int running; struct device* next; scalar_t__ num_vq; scalar_t__ feature_len; int * vq; int desc; } ;
struct TYPE_2__ {struct device* lastdev; struct device* dev; } ;


 TYPE_1__ devices ;
 struct device* malloc (int) ;
 int new_dev_desc (int ) ;

__attribute__((used)) static struct device *new_device(const char *name, u16 type)
{
 struct device *dev = malloc(sizeof(*dev));


 dev->desc = new_dev_desc(type);
 dev->name = name;
 dev->vq = ((void*)0);
 dev->feature_len = 0;
 dev->num_vq = 0;
 dev->running = 0;







 if (devices.lastdev)
  devices.lastdev->next = dev;
 else
  devices.dev = dev;
 devices.lastdev = dev;

 return dev;
}
