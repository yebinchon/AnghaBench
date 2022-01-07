
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int id; } ;
typedef int ssize_t ;


 int NUMA_FOREIGN ;
 int NUMA_HIT ;
 int NUMA_INTERLEAVE_HIT ;
 int NUMA_LOCAL ;
 int NUMA_MISS ;
 int NUMA_OTHER ;
 int node_page_state (int ,int ) ;
 int sprintf (char*,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static ssize_t node_read_numastat(struct sys_device * dev,
    struct sysdev_attribute *attr, char * buf)
{
 return sprintf(buf,
         "numa_hit %lu\n"
         "numa_miss %lu\n"
         "numa_foreign %lu\n"
         "interleave_hit %lu\n"
         "local_node %lu\n"
         "other_node %lu\n",
         node_page_state(dev->id, NUMA_HIT),
         node_page_state(dev->id, NUMA_MISS),
         node_page_state(dev->id, NUMA_FOREIGN),
         node_page_state(dev->id, NUMA_INTERLEAVE_HIT),
         node_page_state(dev->id, NUMA_LOCAL),
         node_page_state(dev->id, NUMA_OTHER));
}
