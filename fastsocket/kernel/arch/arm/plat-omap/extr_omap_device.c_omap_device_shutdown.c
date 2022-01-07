
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct omap_hwmod {int dummy; } ;
struct TYPE_2__ {int id; int name; } ;
struct omap_device {scalar_t__ _state; int hwmods_cnt; struct omap_hwmod** hwmods; TYPE_1__ pdev; } ;


 int EINVAL ;
 int IGNORE_WAKEUP_LAT ;
 scalar_t__ OMAP_DEVICE_STATE_ENABLED ;
 scalar_t__ OMAP_DEVICE_STATE_IDLE ;
 scalar_t__ OMAP_DEVICE_STATE_SHUTDOWN ;
 int WARN (int,char*,int ,int ) ;
 struct omap_device* _find_by_pdev (struct platform_device*) ;
 int _omap_device_deactivate (struct omap_device*,int ) ;
 int omap_hwmod_shutdown (struct omap_hwmod*) ;

int omap_device_shutdown(struct platform_device *pdev)
{
 int ret, i;
 struct omap_device *od;
 struct omap_hwmod *oh;

 od = _find_by_pdev(pdev);

 if (od->_state != OMAP_DEVICE_STATE_ENABLED &&
     od->_state != OMAP_DEVICE_STATE_IDLE) {
  WARN(1, "omap_device: %s.%d: omap_device_shutdown() called "
       "from invalid state\n", od->pdev.name, od->pdev.id);
  return -EINVAL;
 }

 ret = _omap_device_deactivate(od, IGNORE_WAKEUP_LAT);

 for (i = 0, oh = *od->hwmods; i < od->hwmods_cnt; i++, oh++)
  omap_hwmod_shutdown(oh);

 od->_state = OMAP_DEVICE_STATE_SHUTDOWN;

 return ret;
}
