
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output_poll_slow_work; int poll_enabled; } ;
struct drm_device {TYPE_1__ mode_config; } ;


 int delayed_slow_work_cancel (int *) ;

void drm_kms_helper_poll_disable(struct drm_device *dev)
{
 if (!dev->mode_config.poll_enabled)
  return;
 delayed_slow_work_cancel(&dev->mode_config.output_poll_slow_work);
}
