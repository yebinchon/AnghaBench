
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_fb_priv {int base; } ;
struct nouveau_object {int dummy; } ;


 int NV04_PFB_CFG0 ;
 int nouveau_fb_init (int *) ;
 int nv_wr32 (struct nv04_fb_priv*,int ,int) ;

__attribute__((used)) static int
nv04_fb_init(struct nouveau_object *object)
{
 struct nv04_fb_priv *priv = (void *)object;
 int ret;

 ret = nouveau_fb_init(&priv->base);
 if (ret)
  return ret;





 nv_wr32(priv, NV04_PFB_CFG0, 0x1114);
 return 0;
}
