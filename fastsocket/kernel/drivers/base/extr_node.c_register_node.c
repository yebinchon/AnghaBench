
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int * cls; } ;
struct node {TYPE_1__ sysdev; } ;


 int attr_cpulist ;
 int attr_cpumap ;
 int attr_distance ;
 int attr_meminfo ;
 int attr_numastat ;
 int compaction_register_node (struct node*) ;
 int hugetlb_register_node (struct node*) ;
 int node_class ;
 int scan_unevictable_register_node (struct node*) ;
 int sysdev_create_file (TYPE_1__*,int *) ;
 int sysdev_register (TYPE_1__*) ;

int register_node(struct node *node, int num, struct node *parent)
{
 int error;

 node->sysdev.id = num;
 node->sysdev.cls = &node_class;
 error = sysdev_register(&node->sysdev);

 if (!error){
  sysdev_create_file(&node->sysdev, &attr_cpumap);
  sysdev_create_file(&node->sysdev, &attr_cpulist);
  sysdev_create_file(&node->sysdev, &attr_meminfo);
  sysdev_create_file(&node->sysdev, &attr_numastat);
  sysdev_create_file(&node->sysdev, &attr_distance);

  scan_unevictable_register_node(node);

  hugetlb_register_node(node);

  compaction_register_node(node);
 }
 return error;
}
