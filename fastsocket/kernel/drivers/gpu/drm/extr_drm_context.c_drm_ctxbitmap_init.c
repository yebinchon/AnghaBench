
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int ctx_idr; } ;


 int idr_init (int *) ;

int drm_ctxbitmap_init(struct drm_device * dev)
{
 idr_init(&dev->ctx_idr);
 return 0;
}
