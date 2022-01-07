
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_falcon {int addr; } ;


 int nouveau_engine_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,char const*,char const*,int,void**) ;

int
nouveau_falcon_create_(struct nouveau_object *parent,
         struct nouveau_object *engine,
         struct nouveau_oclass *oclass, u32 addr, bool enable,
         const char *iname, const char *fname,
         int length, void **pobject)
{
 struct nouveau_falcon *falcon;
 int ret;

 ret = nouveau_engine_create_(parent, engine, oclass, enable, iname,
         fname, length, pobject);
 falcon = *pobject;
 if (ret)
  return ret;

 falcon->addr = addr;
 return 0;
}
