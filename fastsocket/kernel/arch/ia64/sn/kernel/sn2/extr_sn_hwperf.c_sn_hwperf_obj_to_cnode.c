
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn_hwperf_object_info {int location; } ;


 int BUG () ;
 scalar_t__ SN_HWPERF_FOREIGN (struct sn_hwperf_object_info*) ;
 int SN_HWPERF_IS_IONODE (struct sn_hwperf_object_info*) ;
 int SN_HWPERF_IS_NODE (struct sn_hwperf_object_info*) ;
 int sn_hwperf_geoid_to_cnode (int ) ;

__attribute__((used)) static int sn_hwperf_obj_to_cnode(struct sn_hwperf_object_info * obj)
{
 if (!SN_HWPERF_IS_NODE(obj) && !SN_HWPERF_IS_IONODE(obj))
  BUG();
 if (SN_HWPERF_FOREIGN(obj))
  return -1;
 return sn_hwperf_geoid_to_cnode(obj->location);
}
