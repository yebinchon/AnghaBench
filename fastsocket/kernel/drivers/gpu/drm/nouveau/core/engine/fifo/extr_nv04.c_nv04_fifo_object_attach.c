
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nv04_fifo_priv {int ramht; } ;
struct TYPE_4__ {int chid; } ;
struct nv04_fifo_chan {TYPE_1__ base; } ;
struct nouveau_object {scalar_t__ engine; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {int mutex; } ;


 int EINVAL ;




 int NV_GPUOBJ_CLASS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nouveau_ramht_insert (int ,int,int,int) ;
 int nv_engidx (scalar_t__) ;
 TYPE_3__* nv_gpuobj (struct nouveau_object*) ;
 scalar_t__ nv_iclass (struct nouveau_object*,int ) ;
 TYPE_2__* nv_subdev (struct nv04_fifo_priv*) ;

int
nv04_fifo_object_attach(struct nouveau_object *parent,
   struct nouveau_object *object, u32 handle)
{
 struct nv04_fifo_priv *priv = (void *)parent->engine;
 struct nv04_fifo_chan *chan = (void *)parent;
 u32 context, chid = chan->base.chid;
 int ret;

 if (nv_iclass(object, NV_GPUOBJ_CLASS))
  context = nv_gpuobj(object)->addr >> 4;
 else
  context = 0x00000004;

 switch (nv_engidx(object->engine)) {
 case 131:
 case 128:
  context |= 0x00000000;
  break;
 case 130:
  context |= 0x00010000;
  break;
 case 129:
  context |= 0x00020000;
  break;
 default:
  return -EINVAL;
 }

 context |= 0x80000000;
 context |= chid << 24;

 mutex_lock(&nv_subdev(priv)->mutex);
 ret = nouveau_ramht_insert(priv->ramht, chid, handle, context);
 mutex_unlock(&nv_subdev(priv)->mutex);
 return ret;
}
