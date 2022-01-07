
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv40_fb_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_fb_init (int *) ;
 int nv_mask (struct nv40_fb_priv*,int,int,int) ;

__attribute__((used)) static int
nv40_fb_init(struct nouveau_object *object)
{
 struct nv40_fb_priv *priv = (void *)object;
 int ret;

 ret = nouveau_fb_init(&priv->base);
 if (ret)
  return ret;

 nv_mask(priv, 0x10033c, 0x00008000, 0x00000000);
 return 0;
}
