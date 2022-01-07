
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv44_mc_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_mc_init (int *) ;
 int nv_rd32 (struct nv44_mc_priv*,int) ;
 int nv_wr32 (struct nv44_mc_priv*,int,int) ;

__attribute__((used)) static int
nv44_mc_init(struct nouveau_object *object)
{
 struct nv44_mc_priv *priv = (void *)object;
 u32 tmp = nv_rd32(priv, 0x10020c);

 nv_wr32(priv, 0x000200, 0xffffffff);

 nv_wr32(priv, 0x001700, tmp);
 nv_wr32(priv, 0x001704, 0);
 nv_wr32(priv, 0x001708, 0);
 nv_wr32(priv, 0x00170c, tmp);

 return nouveau_mc_init(&priv->base);
}
