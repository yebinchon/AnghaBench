
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_type; } ;
struct device {struct device* parent; } ;
typedef struct parisc_device {TYPE_1__ id; struct device dev; } const parisc_device ;


 struct device const root ;
 struct parisc_device const* to_parisc_device (struct device const*) ;

const struct parisc_device *
find_pa_parent_type(const struct parisc_device *padev, int type)
{
 const struct device *dev = &padev->dev;
 while (dev != &root) {
  struct parisc_device *candidate = to_parisc_device(dev);
  if (candidate->id.hw_type == type)
   return candidate;
  dev = dev->parent;
 }

 return ((void*)0);
}
