
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {TYPE_2__* uevent; } ;
struct TYPE_6__ {int bar; int mem; } ;
struct nvc0_fifo_priv {TYPE_3__ base; TYPE_1__ user; int * playlist; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_10__ {int sclass; int * cclass; } ;
struct TYPE_9__ {int unit; int intr; } ;
struct TYPE_7__ {struct nvc0_fifo_priv* priv; int disable; int enable; } ;


 int NV_MEM_ACCESS_RW ;
 int nouveau_fifo_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int ,int,struct nvc0_fifo_priv**) ;
 int nouveau_gpuobj_map (int ,int ,int *) ;
 int nouveau_gpuobj_new (struct nouveau_object*,int *,int,int,int ,int *) ;
 TYPE_5__* nv_engine (struct nvc0_fifo_priv*) ;
 struct nouveau_object* nv_object (struct nvc0_fifo_priv*) ;
 TYPE_4__* nv_subdev (struct nvc0_fifo_priv*) ;
 int nvc0_fifo_cclass ;
 int nvc0_fifo_intr ;
 int nvc0_fifo_sclass ;
 int nvc0_fifo_uevent_disable ;
 int nvc0_fifo_uevent_enable ;

__attribute__((used)) static int
nvc0_fifo_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
        struct nouveau_oclass *oclass, void *data, u32 size,
        struct nouveau_object **pobject)
{
 struct nvc0_fifo_priv *priv;
 int ret;

 ret = nouveau_fifo_create(parent, engine, oclass, 0, 127, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x1000, 0x1000, 0,
    &priv->playlist[0]);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, ((void*)0), 0x1000, 0x1000, 0,
    &priv->playlist[1]);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, ((void*)0), 128 * 0x1000, 0x1000, 0,
    &priv->user.mem);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_map(priv->user.mem, NV_MEM_ACCESS_RW,
    &priv->user.bar);
 if (ret)
  return ret;

 priv->base.uevent->enable = nvc0_fifo_uevent_enable;
 priv->base.uevent->disable = nvc0_fifo_uevent_disable;
 priv->base.uevent->priv = priv;

 nv_subdev(priv)->unit = 0x00000100;
 nv_subdev(priv)->intr = nvc0_fifo_intr;
 nv_engine(priv)->cclass = &nvc0_fifo_cclass;
 nv_engine(priv)->sclass = nvc0_fifo_sclass;
 return 0;
}
