
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int poll_enabled; int output_poll_slow_work; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int THIS_MODULE ;
 int delayed_slow_work_init (int *,int *) ;
 int drm_kms_helper_poll_enable (struct drm_device*) ;
 int output_poll_ops ;
 int slow_work_register_user (int ) ;

void drm_kms_helper_poll_init(struct drm_device *dev)
{
 slow_work_register_user(THIS_MODULE);
 delayed_slow_work_init(&dev->mode_config.output_poll_slow_work,
          &output_poll_ops);
 dev->mode_config.poll_enabled = 1;

 drm_kms_helper_poll_enable(dev);
}
