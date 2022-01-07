
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv41_fb_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_fb_init (int *) ;
 int nv_wr32 (struct nv41_fb_priv*,int,int) ;

int
nv41_fb_init(struct nouveau_object *object)
{
 struct nv41_fb_priv *priv = (void *)object;
 int ret;

 ret = nouveau_fb_init(&priv->base);
 if (ret)
  return ret;

 nv_wr32(priv, 0x100800, 0x00000001);
 return 0;
}
