
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_mc_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_mc_init (int *) ;
 int nv_wr32 (struct nv04_mc_priv*,int,int) ;

int
nv04_mc_init(struct nouveau_object *object)
{
 struct nv04_mc_priv *priv = (void *)object;

 nv_wr32(priv, 0x000200, 0xffffffff);
 nv_wr32(priv, 0x001850, 0x00000001);

 return nouveau_mc_init(&priv->base);
}
