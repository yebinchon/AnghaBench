
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_instmem {int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int nouveau_subdev_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,char*,char*,int,void**) ;

int
nouveau_instmem_create_(struct nouveau_object *parent,
   struct nouveau_object *engine,
   struct nouveau_oclass *oclass,
   int length, void **pobject)
{
 struct nouveau_instmem *imem;
 int ret;

 ret = nouveau_subdev_create_(parent, engine, oclass, 0,
         "INSTMEM", "instmem", length, pobject);
 imem = *pobject;
 if (ret)
  return ret;

 INIT_LIST_HEAD(&imem->list);
 return 0;
}
