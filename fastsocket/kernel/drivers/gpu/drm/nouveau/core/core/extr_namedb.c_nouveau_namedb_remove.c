
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_object {int dummy; } ;
struct nouveau_namedb {int lock; } ;
struct nouveau_handle {int node; struct nouveau_object* object; struct nouveau_namedb* namedb; } ;


 int list_del (int *) ;
 int nouveau_object_ref (int *,struct nouveau_object**) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

void
nouveau_namedb_remove(struct nouveau_handle *handle)
{
 struct nouveau_namedb *namedb = handle->namedb;
 struct nouveau_object *object = handle->object;
 write_lock_irq(&namedb->lock);
 list_del(&handle->node);
 write_unlock_irq(&namedb->lock);
 nouveau_object_ref(((void*)0), &object);
}
