
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_instobj {int head; } ;
struct TYPE_2__ {int mutex; } ;
struct nouveau_instmem {TYPE_1__ base; int list; } ;


 int NV_MEMOBJ_CLASS ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_object_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,int,void**) ;

int
nouveau_instobj_create_(struct nouveau_object *parent,
   struct nouveau_object *engine,
   struct nouveau_oclass *oclass,
   int length, void **pobject)
{
 struct nouveau_instmem *imem = (void *)engine;
 struct nouveau_instobj *iobj;
 int ret;

 ret = nouveau_object_create_(parent, engine, oclass, NV_MEMOBJ_CLASS,
         length, pobject);
 iobj = *pobject;
 if (ret)
  return ret;

 mutex_lock(&imem->base.mutex);
 list_add(&iobj->head, &imem->list);
 mutex_unlock(&imem->base.mutex);
 return 0;
}
