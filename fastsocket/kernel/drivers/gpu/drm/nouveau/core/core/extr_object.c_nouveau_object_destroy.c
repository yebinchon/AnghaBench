
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int parent; int engine; int list; } ;


 int _objlist_lock ;
 int kfree (struct nouveau_object*) ;
 int list_del (int *) ;
 int nouveau_object_ref (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
nouveau_object_destroy(struct nouveau_object *object)
{





 nouveau_object_ref(((void*)0), &object->engine);
 nouveau_object_ref(((void*)0), &object->parent);
 kfree(object);
}
