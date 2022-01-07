
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe {int (* lock ) (scalar_t__,void*) ;unsigned long range; struct probe* next; void* data; scalar_t__ dev; int * get; struct module* owner; } ;
struct module {int dummy; } ;
struct kobj_map {int lock; struct probe** probes; } ;
typedef int kobj_probe_t ;
typedef scalar_t__ dev_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAJOR (scalar_t__) ;
 struct probe* kmalloc (int,int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;

int kobj_map(struct kobj_map *domain, dev_t dev, unsigned long range,
      struct module *module, kobj_probe_t *probe,
      int (*lock)(dev_t, void *), void *data)
{
 unsigned n = MAJOR(dev + range - 1) - MAJOR(dev) + 1;
 unsigned index = MAJOR(dev);
 unsigned i;
 struct probe *p;

 if (n > 255)
  n = 255;

 p = kmalloc(sizeof(struct probe) * n, GFP_KERNEL);

 if (p == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < n; i++, p++) {
  p->owner = module;
  p->get = probe;
  p->lock = lock;
  p->dev = dev;
  p->range = range;
  p->data = data;
 }
 mutex_lock(domain->lock);
 for (i = 0, p -= n; i < n; i++, p++, index++) {
  struct probe **s = &domain->probes[index % 255];
  while (*s && (*s)->range < range)
   s = &(*s)->next;
  p->next = *s;
  *s = p;
 }
 mutex_unlock(domain->lock);
 return 0;
}
