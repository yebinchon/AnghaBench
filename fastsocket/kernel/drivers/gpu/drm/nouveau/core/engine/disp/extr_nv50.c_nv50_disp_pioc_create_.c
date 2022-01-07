
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int nv50_disp_chan_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int,void**) ;

__attribute__((used)) static int
nv50_disp_pioc_create_(struct nouveau_object *parent,
         struct nouveau_object *engine,
         struct nouveau_oclass *oclass, int chid,
         int length, void **pobject)
{
 return nv50_disp_chan_create_(parent, engine, oclass, chid,
          length, pobject);
}
