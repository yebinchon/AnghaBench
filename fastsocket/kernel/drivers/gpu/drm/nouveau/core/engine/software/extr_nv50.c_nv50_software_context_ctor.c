
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int func; } ;
struct TYPE_6__ {int channel; TYPE_1__ event; } ;
struct TYPE_7__ {TYPE_2__ vblank; } ;
struct nv50_software_chan {TYPE_3__ base; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int parent; } ;
struct TYPE_8__ {int addr; } ;


 int nouveau_software_context_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv50_software_chan**) ;
 int nv50_software_vblsem_release ;
 TYPE_4__* nv_gpuobj (int ) ;
 struct nouveau_object* nv_object (struct nv50_software_chan*) ;

__attribute__((used)) static int
nv50_software_context_ctor(struct nouveau_object *parent,
      struct nouveau_object *engine,
      struct nouveau_oclass *oclass, void *data, u32 size,
      struct nouveau_object **pobject)
{
 struct nv50_software_chan *chan;
 int ret;

 ret = nouveau_software_context_create(parent, engine, oclass, &chan);
 *pobject = nv_object(chan);
 if (ret)
  return ret;

 chan->base.vblank.channel = nv_gpuobj(parent->parent)->addr >> 12;
 chan->base.vblank.event.func = nv50_software_vblsem_release;
 return 0;
}
