
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {scalar_t__ presets_needed; } ;


 int qib_ibsd_reset (struct qib_devdata*,int) ;
 int qib_internal_presets (struct qib_devdata*) ;
 int qib_sd_trimdone_monitor (struct qib_devdata*,char*) ;
 int udelay (int) ;

int qib_sd7220_presets(struct qib_devdata *dd)
{
 int ret = 0;

 if (!dd->cspec->presets_needed)
  return ret;
 dd->cspec->presets_needed = 0;

 qib_ibsd_reset(dd, 1);
 udelay(2);
 qib_sd_trimdone_monitor(dd, "link-down");

 ret = qib_internal_presets(dd);
 return ret;
}
