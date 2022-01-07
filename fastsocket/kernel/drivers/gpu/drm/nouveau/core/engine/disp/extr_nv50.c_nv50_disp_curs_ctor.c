
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv50_display_curs_class {int head; } ;
struct nv50_disp_pioc {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int EINVAL ;
 int nv50_disp_pioc_create_ (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int,void**) ;
 struct nouveau_object* nv_object (struct nv50_disp_pioc*) ;

__attribute__((used)) static int
nv50_disp_curs_ctor(struct nouveau_object *parent,
      struct nouveau_object *engine,
      struct nouveau_oclass *oclass, void *data, u32 size,
      struct nouveau_object **pobject)
{
 struct nv50_display_curs_class *args = data;
 struct nv50_disp_pioc *pioc;
 int ret;

 if (size < sizeof(*args) || args->head > 1)
  return -EINVAL;

 ret = nv50_disp_pioc_create_(parent, engine, oclass, 7 + args->head,
         sizeof(*pioc), (void **)&pioc);
 *pobject = nv_object(pioc);
 if (ret)
  return ret;

 return 0;
}
