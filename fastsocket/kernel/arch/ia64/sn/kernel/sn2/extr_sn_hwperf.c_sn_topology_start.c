
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn_hwperf_object_info {int dummy; } ;
struct seq_file {struct sn_hwperf_object_info* private; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ sn_hwperf_obj_cnt ;

__attribute__((used)) static void *sn_topology_start(struct seq_file *s, loff_t * pos)
{
 struct sn_hwperf_object_info *objs = s->private;

 if (*pos < sn_hwperf_obj_cnt)
  return (void *)(objs + *pos);

 return ((void*)0);
}
