
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nouveau_sclass {struct nouveau_oclass* oclass; int * engine; struct nouveau_sclass* sclass; } ;
struct nouveau_parent {int engine; struct nouveau_sclass* sclass; } ;
struct nouveau_oclass {scalar_t__ ofuncs; } ;
struct nouveau_object {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NV_PARENT_CLASS ;
 struct nouveau_sclass* kzalloc (int,int ) ;
 int nouveau_object_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int,void**) ;
 int * nv_engine (struct nouveau_object*) ;

int
nouveau_parent_create_(struct nouveau_object *parent,
         struct nouveau_object *engine,
         struct nouveau_oclass *oclass, u32 pclass,
         struct nouveau_oclass *sclass, u64 engcls,
         int size, void **pobject)
{
 struct nouveau_parent *object;
 struct nouveau_sclass *nclass;
 int ret;

 ret = nouveau_object_create_(parent, engine, oclass, pclass |
         NV_PARENT_CLASS, size, pobject);
 object = *pobject;
 if (ret)
  return ret;

 while (sclass && sclass->ofuncs) {
  nclass = kzalloc(sizeof(*nclass), GFP_KERNEL);
  if (!nclass)
   return -ENOMEM;

  nclass->sclass = object->sclass;
  object->sclass = nclass;
  nclass->engine = engine ? nv_engine(engine) : ((void*)0);
  nclass->oclass = sclass;
  sclass++;
 }

 object->engine = engcls;
 return 0;
}
