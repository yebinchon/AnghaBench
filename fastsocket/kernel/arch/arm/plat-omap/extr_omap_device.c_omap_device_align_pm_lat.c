
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct platform_device {int dummy; } ;
struct omap_device {scalar_t__ dev_wakeup_lat; scalar_t__ _state; scalar_t__ _dev_wakeup_lat_limit; } ;


 int EINVAL ;
 scalar_t__ OMAP_DEVICE_STATE_IDLE ;
 int USE_WAKEUP_LAT ;
 struct omap_device* _find_by_pdev (struct platform_device*) ;
 int _omap_device_activate (struct omap_device*,int ) ;
 int _omap_device_deactivate (struct omap_device*,int ) ;

int omap_device_align_pm_lat(struct platform_device *pdev,
        u32 new_wakeup_lat_limit)
{
 int ret = -EINVAL;
 struct omap_device *od;

 od = _find_by_pdev(pdev);

 if (new_wakeup_lat_limit == od->dev_wakeup_lat)
  return 0;

 od->_dev_wakeup_lat_limit = new_wakeup_lat_limit;

 if (od->_state != OMAP_DEVICE_STATE_IDLE)
  return 0;
 else if (new_wakeup_lat_limit > od->dev_wakeup_lat)
  ret = _omap_device_deactivate(od, USE_WAKEUP_LAT);
 else if (new_wakeup_lat_limit < od->dev_wakeup_lat)
  ret = _omap_device_activate(od, USE_WAKEUP_LAT);

 return ret;
}
