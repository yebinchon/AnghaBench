
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv84_crypt_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_engine_init (int *) ;
 int nv_wr32 (struct nv84_crypt_priv*,int,int) ;

__attribute__((used)) static int
nv84_crypt_init(struct nouveau_object *object)
{
 struct nv84_crypt_priv *priv = (void *)object;
 int ret;

 ret = nouveau_engine_init(&priv->base);
 if (ret)
  return ret;

 nv_wr32(priv, 0x102130, 0xffffffff);
 nv_wr32(priv, 0x102140, 0xffffffbf);
 nv_wr32(priv, 0x10200c, 0x00000010);
 return 0;
}
