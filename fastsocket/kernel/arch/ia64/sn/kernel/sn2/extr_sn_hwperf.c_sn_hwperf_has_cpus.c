
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cnodeid_t ;


 scalar_t__ MAX_NUMNODES ;
 scalar_t__ node_online (scalar_t__) ;
 scalar_t__ nr_cpus_node (scalar_t__) ;

__attribute__((used)) static inline int sn_hwperf_has_cpus(cnodeid_t node)
{
 return node < MAX_NUMNODES && node_online(node) && nr_cpus_node(node);
}
