
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int *) ;
 int class_attr_version ;
 int class_destroy (int *) ;
 int class_remove_file (int *,int *) ;
 int * drm_class ;

void drm_sysfs_destroy(void)
{
 if ((drm_class == ((void*)0)) || (IS_ERR(drm_class)))
  return;
 class_remove_file(drm_class, &class_attr_version);
 class_destroy(drm_class);
 drm_class = ((void*)0);
}
