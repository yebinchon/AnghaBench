
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_entry {int dummy; } ;


 int class_for_each_device (int *,int *,struct node_entry*,int ) ;
 int nodemgr_ud_class ;
 int update_pdrv ;

__attribute__((used)) static void nodemgr_update_pdrv(struct node_entry *ne)
{
 class_for_each_device(&nodemgr_ud_class, ((void*)0), ne, update_pdrv);
}
