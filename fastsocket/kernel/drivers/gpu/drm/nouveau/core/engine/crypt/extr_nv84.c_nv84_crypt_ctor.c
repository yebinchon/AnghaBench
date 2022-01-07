
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nv84_crypt_priv {int dummy; } ;
struct nouveau_oclass {int dummy; } ;
struct nouveau_object {int dummy; } ;
struct TYPE_4__ {int tlb_flush; int sclass; int * cclass; } ;
struct TYPE_3__ {int unit; int intr; } ;


 int nouveau_engine_create (struct nouveau_object*,struct nouveau_object*,struct nouveau_oclass*,int,char*,char*,struct nv84_crypt_priv**) ;
 int nv84_crypt_cclass ;
 int nv84_crypt_intr ;
 int nv84_crypt_sclass ;
 int nv84_crypt_tlb_flush ;
 TYPE_2__* nv_engine (struct nv84_crypt_priv*) ;
 struct nouveau_object* nv_object (struct nv84_crypt_priv*) ;
 TYPE_1__* nv_subdev (struct nv84_crypt_priv*) ;

__attribute__((used)) static int
nv84_crypt_ctor(struct nouveau_object *parent, struct nouveau_object *engine,
        struct nouveau_oclass *oclass, void *data, u32 size,
        struct nouveau_object **pobject)
{
 struct nv84_crypt_priv *priv;
 int ret;

 ret = nouveau_engine_create(parent, engine, oclass, 1,
        "PCRYPT", "crypt", &priv);
 *pobject = nv_object(priv);
 if (ret)
  return ret;

 nv_subdev(priv)->unit = 0x00004000;
 nv_subdev(priv)->intr = nv84_crypt_intr;
 nv_engine(priv)->cclass = &nv84_crypt_cclass;
 nv_engine(priv)->sclass = nv84_crypt_sclass;
 nv_engine(priv)->tlb_flush = nv84_crypt_tlb_flush;
 return 0;
}
