
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int id; int name; } ;
struct omap_device {scalar_t__ _state; int _dev_wakeup_lat_limit; scalar_t__ dev_wakeup_lat; int pm_lats_cnt; int pm_lat_level; TYPE_1__ pdev; } ;


 int EINVAL ;
 int IGNORE_WAKEUP_LAT ;
 int INT_MAX ;
 scalar_t__ OMAP_DEVICE_STATE_ENABLED ;
 scalar_t__ OMAP_DEVICE_STATE_UNKNOWN ;
 int WARN (int,char*,int ,int ) ;
 struct omap_device* _find_by_pdev (struct platform_device*) ;
 int _omap_device_activate (struct omap_device*,int ) ;

int omap_device_enable(struct platform_device *pdev)
{
 int ret;
 struct omap_device *od;

 od = _find_by_pdev(pdev);

 if (od->_state == OMAP_DEVICE_STATE_ENABLED) {
  WARN(1, "omap_device: %s.%d: omap_device_enable() called from "
       "invalid state\n", od->pdev.name, od->pdev.id);
  return -EINVAL;
 }


 if (od->_state == OMAP_DEVICE_STATE_UNKNOWN)
  od->pm_lat_level = od->pm_lats_cnt;

 ret = _omap_device_activate(od, IGNORE_WAKEUP_LAT);

 od->dev_wakeup_lat = 0;
 od->_dev_wakeup_lat_limit = INT_MAX;
 od->_state = OMAP_DEVICE_STATE_ENABLED;

 return ret;
}
