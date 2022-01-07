
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int * create_singlethread_workqueue (char*) ;
 int * edac_workqueue ;

__attribute__((used)) static int edac_workqueue_setup(void)
{
 edac_workqueue = create_singlethread_workqueue("edac-poller");
 if (edac_workqueue == ((void*)0))
  return -ENODEV;
 else
  return 0;
}
