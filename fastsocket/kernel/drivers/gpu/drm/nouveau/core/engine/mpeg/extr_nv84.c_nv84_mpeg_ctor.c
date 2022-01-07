
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nv84_mpeg_priv {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int tlb_flush; int sclass; int * cclass; } ;
struct TYPE_3__ {int unit; int intr; } ;


 int nouveau_mpeg_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,struct nv84_mpeg_priv**) ;
 int nv50_mpeg_intr ;
 int nv50_mpeg_tlb_flush ;
 int nv84_mpeg_cclass ;
 int nv84_mpeg_sclass ;
 TYPE_2__* nv_engine (struct nv84_mpeg_priv*) ;
 struct nouveau_object* nv_object (struct nv84_mpeg_priv*) ;
 TYPE_1__* nv_subdev (struct nv84_mpeg_priv*) ;

__attribute__((used)) static int
nv84_mpeg_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
        struct nouveau_oclass *oclass, void *data, u32 size,
        struct nouveau_object **pobject)
{
 struct nv84_mpeg_priv *priv;
 int ret;

 ret = nouveau_mpeg_create(parent, engine, oclass, &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_subdev(priv)->unit = 0x00000002;
 nv_subdev(priv)->intr = nv50_mpeg_intr;
 nv_engine(priv)->cclass = &nv84_mpeg_cclass;
 nv_engine(priv)->sclass = nv84_mpeg_sclass;
 nv_engine(priv)->tlb_flush = nv50_mpeg_tlb_flush;
 return 0;
}
