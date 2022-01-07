
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HvLpConfig_getHostingLpIndex (int ) ;
 int HvLpConfig_getLpIndex () ;
 scalar_t__ HvLpIndexInvalid ;
 int handleConfig ;
 int vio_setHandler (int ,int ) ;
 int viomajorsubtype_config ;
 scalar_t__ viopath_hostLp ;
 int viopath_ourLp ;

void vio_set_hostlp(void)
{




 if (viopath_hostLp != HvLpIndexInvalid)
  return;





 viopath_ourLp = HvLpConfig_getLpIndex();
 viopath_hostLp = HvLpConfig_getHostingLpIndex(viopath_ourLp);

 if (viopath_hostLp != HvLpIndexInvalid)
  vio_setHandler(viomajorsubtype_config, handleConfig);
}
