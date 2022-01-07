
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int THIS_MODULE ;
 int drm_kms_helper_poll_disable (struct drm_device*) ;
 int slow_work_unregister_user (int ) ;

void drm_kms_helper_poll_fini(struct drm_device *dev)
{
 drm_kms_helper_poll_disable(dev);
 slow_work_unregister_user(THIS_MODULE);
}
