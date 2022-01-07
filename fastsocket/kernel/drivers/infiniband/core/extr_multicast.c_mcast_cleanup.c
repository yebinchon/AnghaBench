
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int ib_sa_unregister_client (int *) ;
 int ib_unregister_client (int *) ;
 int mcast_client ;
 int mcast_wq ;
 int sa_client ;

void mcast_cleanup(void)
{
 ib_unregister_client(&mcast_client);
 ib_sa_unregister_client(&sa_client);
 destroy_workqueue(mcast_wq);
}
