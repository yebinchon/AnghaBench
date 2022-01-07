
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int genl_unregister_family (int *) ;
 int pmcraid_event_family ;

__attribute__((used)) static void pmcraid_netlink_release(void)
{
 genl_unregister_family(&pmcraid_event_family);
}
