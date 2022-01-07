
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv04_software_chan {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_software_context_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv04_software_chan**) ;
 struct nouveau_object* nv_object (struct nv04_software_chan*) ;

__attribute__((used)) static int
nv04_software_context_ctor(struct nouveau_object *parent,
        struct nouveau_object *engine,
        struct nouveau_oclass *oclass, void *data, u32 size,
        struct nouveau_object **pobject)
{
 struct nv04_software_chan *chan;
 int ret;

 ret = nouveau_software_context_create(parent, engine, oclass, &chan);
 *pobject = nv_object(chan);
 if (ret)
  return ret;

 return 0;
}
