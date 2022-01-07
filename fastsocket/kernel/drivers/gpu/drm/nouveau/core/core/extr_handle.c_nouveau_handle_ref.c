
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_object {struct nouveau_object* parent; } ;
struct nouveau_handle {int object; } ;


 int NV_NAMEDB_CLASS ;
 struct nouveau_handle* nouveau_namedb_get (int ,int ) ;
 int nouveau_namedb_put (struct nouveau_handle*) ;
 int nouveau_object_ref (int ,struct nouveau_object**) ;
 int nv_iclass (struct nouveau_object*,int ) ;
 int nv_namedb (struct nouveau_object*) ;

struct nouveau_object *
nouveau_handle_ref(struct nouveau_object *parent, u32 name)
{
 struct nouveau_object *object = ((void*)0);
 struct nouveau_handle *handle;

 while (!nv_iclass(parent, NV_NAMEDB_CLASS))
  parent = parent->parent;

 handle = nouveau_namedb_get(nv_namedb(parent), name);
 if (handle) {
  nouveau_object_ref(handle->object, &object);
  nouveau_namedb_put(handle);
 }

 return object;
}
