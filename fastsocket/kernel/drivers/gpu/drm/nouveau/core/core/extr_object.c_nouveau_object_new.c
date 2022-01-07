
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_handle {int dummy; } ;
struct TYPE_2__ {struct nouveau_oclass* cclass; } ;


 int EINVAL ;
 int ENOENT ;
 int NV_PARENT_CLASS ;
 int nouveau_handle_create (struct nouveau_object*,int ,int ,struct nouveau_object*,struct nouveau_handle**) ;
 int nouveau_handle_destroy (struct nouveau_handle*) ;
 int nouveau_handle_init (struct nouveau_handle*) ;
 struct nouveau_object* nouveau_handle_ref (struct nouveau_object*,int ) ;
 int nouveau_object_ctor (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,void*,int ,struct nouveau_object**) ;
 int nouveau_object_dec (struct nouveau_object*,int) ;
 int nouveau_object_inc (struct nouveau_object*) ;
 int nouveau_object_ref (struct nouveau_object*,struct nouveau_object**) ;
 int nouveau_parent_sclass (struct nouveau_object*,int ,struct nouveau_object**,struct nouveau_oclass**) ;
 int nv_debug (struct nouveau_object*,char*,int ) ;
 TYPE_1__* nv_engine (struct nouveau_object*) ;
 int nv_error (struct nouveau_object*,char*,...) ;
 int nv_iclass (struct nouveau_object*,int ) ;

int
nouveau_object_new(struct nouveau_object *client, u32 _parent, u32 _handle,
     u16 _oclass, void *data, u32 size,
     struct nouveau_object **pobject)
{
 struct nouveau_object *parent = ((void*)0);
 struct nouveau_object *engctx = ((void*)0);
 struct nouveau_object *object = ((void*)0);
 struct nouveau_object *engine;
 struct nouveau_oclass *oclass;
 struct nouveau_handle *handle;
 int ret;


 parent = nouveau_handle_ref(client, _parent);
 if (!parent) {
  nv_error(client, "parent 0x%08x not found\n", _parent);
  return -ENOENT;
 }

 if (!nv_iclass(parent, NV_PARENT_CLASS)) {
  nv_error(parent, "cannot have children\n");
  ret = -EINVAL;
  goto fail_class;
 }


 ret = nouveau_parent_sclass(parent, _oclass, &engine, &oclass);
 if (ret) {
  nv_debug(parent, "illegal class 0x%04x\n", _oclass);
  goto fail_class;
 }





 if (engine) {
  ret = nouveau_object_inc(engine);
  if (ret)
   goto fail_class;
 }




 if (engine && nv_engine(engine)->cclass) {
  ret = nouveau_object_ctor(parent, engine,
       nv_engine(engine)->cclass,
       data, size, &engctx);
  if (ret)
   goto fail_engctx;
 } else {
  nouveau_object_ref(parent, &engctx);
 }


 ret = nouveau_object_ctor(engctx, engine, oclass, data, size, &object);
 *pobject = object;
 if (ret)
  goto fail_ctor;

 ret = nouveau_object_inc(object);
 if (ret)
  goto fail_init;

 ret = nouveau_handle_create(parent, _parent, _handle, object, &handle);
 if (ret)
  goto fail_handle;

 ret = nouveau_handle_init(handle);
 if (ret)
  nouveau_handle_destroy(handle);

fail_handle:
 nouveau_object_dec(object, 0);
fail_init:
 nouveau_object_ref(((void*)0), &object);
fail_ctor:
 nouveau_object_ref(((void*)0), &engctx);
fail_engctx:
 if (engine)
  nouveau_object_dec(engine, 0);
fail_class:
 nouveau_object_ref(((void*)0), &parent);
 return ret;
}
