
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nouveau_object {scalar_t__ parent; scalar_t__ engine; } ;
struct TYPE_4__ {int (* fini ) (struct nouveau_object*,int) ;} ;
struct TYPE_3__ {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_object_dec (scalar_t__,int) ;
 int nv_debug (struct nouveau_object*,char*) ;
 TYPE_2__* nv_ofuncs (struct nouveau_object*) ;
 TYPE_1__* nv_subdev (scalar_t__) ;
 int nv_trace (struct nouveau_object*,char*) ;
 int nv_warn (struct nouveau_object*,char*,int) ;
 int stub1 (struct nouveau_object*,int) ;

__attribute__((used)) static int
nouveau_object_decf(struct nouveau_object *object)
{
 int ret;

 nv_trace(object, "stopping...\n");

 ret = nv_ofuncs(object)->fini(object, 0);
 if (ret)
  nv_warn(object, "failed fini, %d\n", ret);

 if (object->engine) {
  mutex_lock(&nv_subdev(object->engine)->mutex);
  nouveau_object_dec(object->engine, 0);
  mutex_unlock(&nv_subdev(object->engine)->mutex);
 }

 if (object->parent)
  nouveau_object_dec(object->parent, 0);

 nv_debug(object, "stopped\n");
 return 0;
}
