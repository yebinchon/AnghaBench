
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int complete; } ;


 int ENXIO ;
 int PMU_ADB_CMD ;
 int PMU_ADB_POLL_OFF ;
 int adb_dev_map ;
 int pmu_adb_flags ;
 int pmu_fully_inited ;
 int pmu_poll () ;
 int pmu_request (struct adb_request*,int *,int,int ,...) ;

__attribute__((used)) static int
pmu_autopoll(int devs)
{
 struct adb_request req;

 if (!pmu_fully_inited) return -ENXIO;

 if (devs) {
  adb_dev_map = devs;
  pmu_request(&req, ((void*)0), 5, PMU_ADB_CMD, 0, 0x86,
       adb_dev_map >> 8, adb_dev_map);
  pmu_adb_flags = 2;
 } else {
  pmu_request(&req, ((void*)0), 1, PMU_ADB_POLL_OFF);
  pmu_adb_flags = 0;
 }
 while (!req.complete)
  pmu_poll();
 return 0;
}
