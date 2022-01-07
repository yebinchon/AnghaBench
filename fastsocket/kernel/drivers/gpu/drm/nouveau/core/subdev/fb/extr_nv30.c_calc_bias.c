
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv30_fb_priv {int dummy; } ;
struct nouveau_device {int chipset; } ;


 struct nouveau_device* nv_device (struct nv30_fb_priv*) ;
 int nv_rd32 (struct nv30_fb_priv*,int) ;

__attribute__((used)) static int
calc_bias(struct nv30_fb_priv *priv, int k, int i, int j)
{
 struct nouveau_device *device = nv_device(priv);
 int b = (device->chipset > 0x30 ?
   nv_rd32(priv, 0x122c + 0x10 * k + 0x4 * j) >> (4 * (i ^ 1)) :
   0) & 0xf;

 return 2 * (b & 0x8 ? b - 0x10 : b);
}
