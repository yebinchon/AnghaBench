
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int sysdev; } ;


 int attr_cpulist ;
 int attr_cpumap ;
 int attr_distance ;
 int attr_meminfo ;
 int attr_numastat ;
 int hugetlb_unregister_node (struct node*) ;
 int scan_unevictable_unregister_node (struct node*) ;
 int sysdev_remove_file (int *,int *) ;
 int sysdev_unregister (int *) ;

void unregister_node(struct node *node)
{
 sysdev_remove_file(&node->sysdev, &attr_cpumap);
 sysdev_remove_file(&node->sysdev, &attr_cpulist);
 sysdev_remove_file(&node->sysdev, &attr_meminfo);
 sysdev_remove_file(&node->sysdev, &attr_numastat);
 sysdev_remove_file(&node->sysdev, &attr_distance);

 scan_unevictable_unregister_node(node);
 hugetlb_unregister_node(node);

 sysdev_unregister(&node->sysdev);
}
