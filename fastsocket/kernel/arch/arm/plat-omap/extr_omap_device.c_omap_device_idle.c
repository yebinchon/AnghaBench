
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int id; int name; } ;
struct omap_device {scalar_t__ _state; TYPE_1__ pdev; } ;


 int EINVAL ;
 scalar_t__ OMAP_DEVICE_STATE_ENABLED ;
 scalar_t__ OMAP_DEVICE_STATE_IDLE ;
 int USE_WAKEUP_LAT ;
 int WARN (int,char*,int ,int ) ;
 struct omap_device* _find_by_pdev (struct platform_device*) ;
 int _omap_device_deactivate (struct omap_device*,int ) ;

int omap_device_idle(struct platform_device *pdev)
{
 int ret;
 struct omap_device *od;

 od = _find_by_pdev(pdev);

 if (od->_state != OMAP_DEVICE_STATE_ENABLED) {
  WARN(1, "omap_device: %s.%d: omap_device_idle() called from "
       "invalid state\n", od->pdev.name, od->pdev.id);
  return -EINVAL;
 }

 ret = _omap_device_deactivate(od, USE_WAKEUP_LAT);

 od->_state = OMAP_DEVICE_STATE_IDLE;

 return ret;
}
