
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_oclass {int handle; } ;
struct nouveau_object {int list; int _magic; int usecount; int refcount; struct nouveau_oclass* oclass; int engine; int parent; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NOUVEAU_OBJECT_MAGIC ;
 int _objlist ;
 int _objlist_lock ;
 int atomic_set (int *,int) ;
 void* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int nouveau_object_ref (struct nouveau_object*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
nouveau_object_create_(struct nouveau_object *parent,
         struct nouveau_object *engine,
         struct nouveau_oclass *oclass, u32 pclass,
         int size, void **pobject)
{
 struct nouveau_object *object;

 object = *pobject = kzalloc(size, GFP_KERNEL);
 if (!object)
  return -ENOMEM;

 nouveau_object_ref(parent, &object->parent);
 nouveau_object_ref(engine, &object->engine);
 object->oclass = oclass;
 object->oclass->handle |= pclass;
 atomic_set(&object->refcount, 1);
 atomic_set(&object->usecount, 0);







 return 0;
}
