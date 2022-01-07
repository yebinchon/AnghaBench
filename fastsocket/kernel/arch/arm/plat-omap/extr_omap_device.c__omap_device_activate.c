
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct omap_device_pm_latency {int activate_lat; int (* activate_func ) (struct omap_device*) ;} ;
struct TYPE_2__ {int id; int name; } ;
struct omap_device {scalar_t__ pm_lat_level; scalar_t__ dev_wakeup_lat; scalar_t__ _dev_wakeup_lat_limit; TYPE_1__ pdev; struct omap_device_pm_latency* pm_lats; } ;


 int WARN (int,char*,int ,int ,int,int,int) ;
 int _read_32ksynct () ;
 int pr_debug (char*,int ,...) ;
 int stub1 (struct omap_device*) ;

__attribute__((used)) static int _omap_device_activate(struct omap_device *od, u8 ignore_lat)
{
 u32 a, b;

 pr_debug("omap_device: %s: activating\n", od->pdev.name);

 while (od->pm_lat_level > 0) {
  struct omap_device_pm_latency *odpl;
  int act_lat = 0;

  od->pm_lat_level--;

  odpl = od->pm_lats + od->pm_lat_level;

  if (!ignore_lat &&
      (od->dev_wakeup_lat <= od->_dev_wakeup_lat_limit))
   break;

  a = _read_32ksynct();


  odpl->activate_func(od);

  b = _read_32ksynct();

  act_lat = (b - a) >> 15;

  pr_debug("omap_device: %s: pm_lat %d: activate: elapsed time "
    "%d usec\n", od->pdev.name, od->pm_lat_level, act_lat);

  WARN(act_lat > odpl->activate_lat, "omap_device: %s.%d: "
       "activate step %d took longer than expected (%d > %d)\n",
       od->pdev.name, od->pdev.id, od->pm_lat_level,
       act_lat, odpl->activate_lat);

  od->dev_wakeup_lat -= odpl->activate_lat;
 }

 return 0;
}
