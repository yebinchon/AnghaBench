
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nouveau_bo {int dummy; } ;
struct drm_device {int dummy; } ;


 int nouveau_bo_rd32 (struct nouveau_bo*,int) ;
 int nouveau_bo_wr16 (struct nouveau_bo*,int,int) ;
 int nv_cursor_width (struct drm_device*) ;

__attribute__((used)) static void nv04_cursor_upload(struct drm_device *dev, struct nouveau_bo *src,
          struct nouveau_bo *dst)
{
 int width = nv_cursor_width(dev);
 uint32_t pixel;
 int i, j;

 for (i = 0; i < width; i++) {
  for (j = 0; j < width; j++) {
   pixel = nouveau_bo_rd32(src, i*64 + j);

   nouveau_bo_wr16(dst, i*width + j, (pixel & 0x80000000) >> 16
         | (pixel & 0xf80000) >> 9
         | (pixel & 0xf800) >> 6
         | (pixel & 0xf8) >> 3);
  }
 }
}
