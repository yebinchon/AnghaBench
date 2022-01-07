
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nv50_fifo_priv {int * playlist; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int sclass; int * cclass; } ;
struct TYPE_3__ {int unit; int intr; } ;


 int nouveau_fifo_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,int,struct nv50_fifo_priv**) ;
 int nouveau_gpuobj_new (struct nouveau_object*,int *,int,int,int ,int *) ;
 int nv04_fifo_intr ;
 int nv50_fifo_cclass ;
 int nv50_fifo_sclass ;
 TYPE_2__* nv_engine (struct nv50_fifo_priv*) ;
 struct nouveau_object* nv_object (struct nv50_fifo_priv*) ;
 TYPE_1__* nv_subdev (struct nv50_fifo_priv*) ;

__attribute__((used)) static int
nv50_fifo_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
        struct nouveau_oclass *oclass, void *data, u32 size,
        struct nouveau_object **pobject)
{
 struct nv50_fifo_priv *priv;
 int ret;

 ret = nouveau_fifo_create(parent, engine, oclass, 1, 127, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, ((void*)0), 128 * 4, 0x1000, 0,
    &priv->playlist[0]);
 if (ret)
  return ret;

 ret = nouveau_gpuobj_new(parent, ((void*)0), 128 * 4, 0x1000, 0,
    &priv->playlist[1]);
 if (ret)
  return ret;

 nv_subdev(priv)->unit = 0x00000100;
 nv_subdev(priv)->intr = nv04_fifo_intr;
 nv_engine(priv)->cclass = &nv50_fifo_cclass;
 nv_engine(priv)->sclass = nv50_fifo_sclass;
 return 0;
}
