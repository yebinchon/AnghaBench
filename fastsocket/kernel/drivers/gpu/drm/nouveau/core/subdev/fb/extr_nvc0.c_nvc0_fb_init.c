
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvc0_fb_priv {int r100c10; int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_fb_init (int *) ;
 int nv_wr32 (struct nvc0_fb_priv*,int,int) ;

__attribute__((used)) static int
nvc0_fb_init(struct nouveau_object *object)
{
 struct nvc0_fb_priv *priv = (void *)object;
 int ret;

 ret = nouveau_fb_init(&priv->base);
 if (ret)
  return ret;

 nv_wr32(priv, 0x100c10, priv->r100c10 >> 8);
 return 0;
}
