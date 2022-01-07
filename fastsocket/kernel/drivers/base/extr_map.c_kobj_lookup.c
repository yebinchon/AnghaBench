
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe {int dev; int range; scalar_t__ (* lock ) (int,void*) ;struct kobject* (* get ) (int,int*,void*) ;void* data; struct module* owner; struct probe* next; } ;
struct module {int dummy; } ;
struct kobject {int dummy; } ;
struct kobj_map {int lock; struct probe** probes; } ;
typedef int dev_t ;


 int MAJOR (int) ;
 int module_put (struct module*) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 scalar_t__ stub1 (int,void*) ;
 int try_module_get (struct module*) ;

struct kobject *kobj_lookup(struct kobj_map *domain, dev_t dev, int *index)
{
 struct kobject *kobj;
 struct probe *p;
 unsigned long best = ~0UL;

retry:
 mutex_lock(domain->lock);
 for (p = domain->probes[MAJOR(dev) % 255]; p; p = p->next) {
  struct kobject *(*probe)(dev_t, int *, void *);
  struct module *owner;
  void *data;

  if (p->dev > dev || p->dev + p->range - 1 < dev)
   continue;
  if (p->range - 1 >= best)
   break;
  if (!try_module_get(p->owner))
   continue;
  owner = p->owner;
  data = p->data;
  probe = p->get;
  best = p->range - 1;
  *index = dev - p->dev;
  if (p->lock && p->lock(dev, data) < 0) {
   module_put(owner);
   continue;
  }
  mutex_unlock(domain->lock);
  kobj = probe(dev, index, data);

  module_put(owner);
  if (kobj)
   return kobj;
  goto retry;
 }
 mutex_unlock(domain->lock);
 return ((void*)0);
}
