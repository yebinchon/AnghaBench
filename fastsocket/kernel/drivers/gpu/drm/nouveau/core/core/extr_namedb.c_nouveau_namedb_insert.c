
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_object {int dummy; } ;
struct nouveau_namedb {int lock; int list; } ;
struct nouveau_handle {int node; struct nouveau_namedb* namedb; int object; } ;


 int EEXIST ;
 int list_add (int *,int *) ;
 int nouveau_namedb_lookup (struct nouveau_namedb*,int ) ;
 int nouveau_object_ref (struct nouveau_object*,int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

int
nouveau_namedb_insert(struct nouveau_namedb *namedb, u32 name,
        struct nouveau_object *object,
        struct nouveau_handle *handle)
{
 int ret = -EEXIST;
 write_lock_irq(&namedb->lock);
 if (!nouveau_namedb_lookup(namedb, name)) {
  nouveau_object_ref(object, &handle->object);
  handle->namedb = namedb;
  list_add(&handle->node, &namedb->list);
  ret = 0;
 }
 write_unlock_irq(&namedb->lock);
 return ret;
}
