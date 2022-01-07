
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entry; } ;
struct devres {void* data; TYPE_1__ node; } ;
struct device {int devres_lock; } ;
typedef int dr_release_t ;
typedef int dr_match_t ;


 int devres_log (struct device*,TYPE_1__*,char*) ;
 struct devres* find_dr (struct device*,int ,int ,void*) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void * devres_remove(struct device *dev, dr_release_t release,
       dr_match_t match, void *match_data)
{
 struct devres *dr;
 unsigned long flags;

 spin_lock_irqsave(&dev->devres_lock, flags);
 dr = find_dr(dev, release, match, match_data);
 if (dr) {
  list_del_init(&dr->node.entry);
  devres_log(dev, &dr->node, "REM");
 }
 spin_unlock_irqrestore(&dev->devres_lock, flags);

 if (dr)
  return dr->data;
 return ((void*)0);
}
