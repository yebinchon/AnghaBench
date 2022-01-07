
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_NUMNODES ;
 int init_affinity_node (int) ;

__attribute__((used)) static void init_affinity_fw(void)
{
 int cbe;

 for (cbe = 0; cbe < MAX_NUMNODES; cbe++)
  init_affinity_node(cbe);
}
