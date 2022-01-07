
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int device; } ;


 int device_for_each_child (int *,int *,int ) ;
 int remove_nodes_in_limbo ;

__attribute__((used)) static void nodemgr_remove_nodes_in_limbo(struct hpsb_host *host)
{
 device_for_each_child(&host->device, ((void*)0), remove_nodes_in_limbo);
}
