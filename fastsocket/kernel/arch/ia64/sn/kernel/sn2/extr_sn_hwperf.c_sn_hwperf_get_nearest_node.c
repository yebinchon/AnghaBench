
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn_hwperf_object_info {int dummy; } ;
typedef int cnodeid_t ;


 int sn_hwperf_enum_objects (int*,struct sn_hwperf_object_info**) ;
 int sn_hwperf_get_nearest_node_objdata (struct sn_hwperf_object_info*,int,int ,int *,int *) ;
 int vfree (struct sn_hwperf_object_info*) ;

int sn_hwperf_get_nearest_node(cnodeid_t node,
 cnodeid_t *near_mem_node, cnodeid_t *near_cpu_node)
{
 int e;
 int nobj;
 struct sn_hwperf_object_info *objbuf;

 if ((e = sn_hwperf_enum_objects(&nobj, &objbuf)) == 0) {
  e = sn_hwperf_get_nearest_node_objdata(objbuf, nobj,
   node, near_mem_node, near_cpu_node);
  vfree(objbuf);
 }

 return e;
}
