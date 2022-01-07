
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int func; } ;
typedef TYPE_1__ drm_mga_init_t ;


 int EINVAL ;
 int FULL_CLEANUP ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;


 int mga_do_cleanup_dma (struct drm_device*,int ) ;
 int mga_do_init_dma (struct drm_device*,TYPE_1__*) ;

int mga_dma_init(struct drm_device *dev, void *data,
   struct drm_file *file_priv)
{
 drm_mga_init_t *init = data;
 int err;

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 switch (init->func) {
 case 128:
  err = mga_do_init_dma(dev, init);
  if (err)
   (void)mga_do_cleanup_dma(dev, FULL_CLEANUP);
  return err;
 case 129:
  return mga_do_cleanup_dma(dev, FULL_CLEANUP);
 }

 return -EINVAL;
}
