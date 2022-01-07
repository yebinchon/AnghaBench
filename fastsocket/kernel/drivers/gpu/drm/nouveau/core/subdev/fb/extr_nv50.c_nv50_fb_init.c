
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_fb_priv {int r100c08; int base; } ;
struct nouveau_object {int dummy; } ;
struct nouveau_device {int chipset; } ;


 int nouveau_fb_init (int *) ;
 struct nouveau_device* nv_device (struct nouveau_object*) ;
 int nv_wr32 (struct nv50_fb_priv*,int,int) ;

__attribute__((used)) static int
nv50_fb_init(struct nouveau_object *object)
{
 struct nouveau_device *device = nv_device(object);
 struct nv50_fb_priv *priv = (void *)object;
 int ret;

 ret = nouveau_fb_init(&priv->base);
 if (ret)
  return ret;





 nv_wr32(priv, 0x100c08, priv->r100c08 >> 8);



 switch (device->chipset) {
 case 0x50:
  nv_wr32(priv, 0x100c90, 0x000707ff);
  break;
 case 0xa3:
 case 0xa5:
 case 0xa8:
  nv_wr32(priv, 0x100c90, 0x000d0fff);
  break;
 case 0xaf:
  nv_wr32(priv, 0x100c90, 0x089d1fff);
  break;
 default:
  nv_wr32(priv, 0x100c90, 0x001d07ff);
  break;
 }

 return 0;
}
