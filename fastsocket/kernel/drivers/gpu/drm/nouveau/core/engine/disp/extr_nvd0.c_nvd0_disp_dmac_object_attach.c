
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nv50_disp_chan {int chid; } ;
struct nv50_disp_base {int ramht; } ;
struct nouveau_object {scalar_t__ parent; } ;
struct TYPE_4__ {TYPE_1__* node; } ;
struct TYPE_3__ {int offset; } ;


 int nouveau_ramht_insert (int ,int,int,int) ;
 TYPE_2__* nv_gpuobj (struct nouveau_object*) ;

__attribute__((used)) static int
nvd0_disp_dmac_object_attach(struct nouveau_object *parent,
        struct nouveau_object *object, u32 name)
{
 struct nv50_disp_base *base = (void *)parent->parent;
 struct nv50_disp_chan *chan = (void *)parent;
 u32 addr = nv_gpuobj(object)->node->offset;
 u32 data = (chan->chid << 27) | (addr << 9) | 0x00000001;
 return nouveau_ramht_insert(base->ramht, chan->chid, name, data);
}
