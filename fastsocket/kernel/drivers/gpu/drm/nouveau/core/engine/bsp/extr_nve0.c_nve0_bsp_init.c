
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nve0_bsp_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_falcon_init (int *) ;
 int nv_wr32 (struct nve0_bsp_priv*,int,int) ;

__attribute__((used)) static int
nve0_bsp_init(struct nouveau_object *object)
{
 struct nve0_bsp_priv *priv = (void *)object;
 int ret;

 ret = nouveau_falcon_init(&priv->base);
 if (ret)
  return ret;

 nv_wr32(priv, 0x084010, 0x0000fff2);
 nv_wr32(priv, 0x08401c, 0x0000fff2);
 return 0;
}
