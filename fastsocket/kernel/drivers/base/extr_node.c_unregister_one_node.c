
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * node_devices ;
 int unregister_node (int *) ;

void unregister_one_node(int nid)
{
 unregister_node(&node_devices[nid]);
}
