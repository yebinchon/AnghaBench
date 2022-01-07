
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_disp {int vblank; } ;


 int nouveau_engine_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,char const*,char const*,int,void**) ;
 int nouveau_event_create (int,int *) ;

int
nouveau_disp_create_(struct nouveau_object *parent,
       struct nouveau_object *engine,
       struct nouveau_oclass *oclass, int heads,
       const char *intname, const char *extname,
       int length, void **pobject)
{
 struct nouveau_disp *disp;
 int ret;

 ret = nouveau_engine_create_(parent, engine, oclass, 1,
         intname, extname, length, pobject);
 disp = *pobject;
 if (ret)
  return ret;

 return nouveau_event_create(heads, &disp->vblank);
}
