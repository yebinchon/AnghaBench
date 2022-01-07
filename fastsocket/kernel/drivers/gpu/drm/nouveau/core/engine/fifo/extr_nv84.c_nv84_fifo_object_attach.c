
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nv50_fifo_chan {int ramht; } ;
struct nouveau_object {int engine; } ;
struct TYPE_4__ {TYPE_1__* node; } ;
struct TYPE_3__ {int offset; } ;


 int EINVAL ;
 int NV_GPUOBJ_CLASS ;
 int nouveau_ramht_insert (int ,int ,int,int) ;
 int nv_engidx (int ) ;
 TYPE_2__* nv_gpuobj (struct nouveau_object*) ;
 scalar_t__ nv_iclass (struct nouveau_object*,int ) ;

__attribute__((used)) static int
nv84_fifo_object_attach(struct nouveau_object *parent,
   struct nouveau_object *object, u32 handle)
{
 struct nv50_fifo_chan *chan = (void *)parent;
 u32 context;

 if (nv_iclass(object, NV_GPUOBJ_CLASS))
  context = nv_gpuobj(object)->node->offset >> 4;
 else
  context = 0x00000004;

 switch (nv_engidx(object->engine)) {
 case 135:
 case 130 : context |= 0x00000000; break;
 case 134 : context |= 0x00100000; break;
 case 132 :
 case 131 : context |= 0x00200000; break;
 case 133 :
 case 137 : context |= 0x00300000; break;
 case 128 : context |= 0x00400000; break;
 case 136 :
 case 129: context |= 0x00500000; break;
 case 138 : context |= 0x00600000; break;
 default:
  return -EINVAL;
 }

 return nouveau_ramht_insert(chan->ramht, 0, handle, context);
}
