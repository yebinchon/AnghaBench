
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int *) ;
 int * edac_workqueue ;
 int flush_workqueue (int *) ;

__attribute__((used)) static void edac_workqueue_teardown(void)
{
 if (edac_workqueue) {
  flush_workqueue(edac_workqueue);
  destroy_workqueue(edac_workqueue);
  edac_workqueue = ((void*)0);
 }
}
