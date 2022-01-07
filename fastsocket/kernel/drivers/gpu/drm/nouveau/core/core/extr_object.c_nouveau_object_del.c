
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_object {int dummy; } ;
struct nouveau_handle {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int NV_NAMEDB_CLASS ;
 int nouveau_handle_destroy (struct nouveau_handle*) ;
 int nouveau_handle_fini (struct nouveau_handle*,int) ;
 struct nouveau_object* nouveau_handle_ref (struct nouveau_object*,int ) ;
 struct nouveau_handle* nouveau_namedb_get (int ,int ) ;
 int nouveau_namedb_put (struct nouveau_handle*) ;
 int nouveau_object_ref (int *,struct nouveau_object**) ;
 int nv_namedb (struct nouveau_object*) ;
 struct nouveau_object* nv_pclass (struct nouveau_object*,int ) ;

int
nouveau_object_del(struct nouveau_object *client, u32 _parent, u32 _handle)
{
 struct nouveau_object *parent = ((void*)0);
 struct nouveau_object *namedb = ((void*)0);
 struct nouveau_handle *handle = ((void*)0);

 parent = nouveau_handle_ref(client, _parent);
 if (!parent)
  return -ENOENT;

 namedb = nv_pclass(parent, NV_NAMEDB_CLASS);
 if (namedb) {
  handle = nouveau_namedb_get(nv_namedb(namedb), _handle);
  if (handle) {
   nouveau_namedb_put(handle);
   nouveau_handle_fini(handle, 0);
   nouveau_handle_destroy(handle);
  }
 }

 nouveau_object_ref(((void*)0), &parent);
 return handle ? 0 : -EINVAL;
}
