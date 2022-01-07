
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv31_bus_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_bus_init (int *) ;
 int nv_wr32 (struct nv31_bus_priv*,int,int) ;

__attribute__((used)) static int
nv31_bus_init(struct nouveau_object *object)
{
 struct nv31_bus_priv *priv = (void *)object;
 int ret;

 ret = nouveau_bus_init(&priv->base);
 if (ret)
  return ret;

 nv_wr32(priv, 0x001100, 0xffffffff);
 nv_wr32(priv, 0x001140, 0x00070008);
 return 0;
}
