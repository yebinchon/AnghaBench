
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int ib_register_client (int *) ;
 int ib_sa_register_client (int *) ;
 int ib_sa_unregister_client (int *) ;
 int mcast_client ;
 int mcast_wq ;
 int sa_client ;

int mcast_init(void)
{
 int ret;

 mcast_wq = create_singlethread_workqueue("ib_mcast");
 if (!mcast_wq)
  return -ENOMEM;

 ib_sa_register_client(&sa_client);

 ret = ib_register_client(&mcast_client);
 if (ret)
  goto err;
 return 0;

err:
 ib_sa_unregister_client(&sa_client);
 destroy_workqueue(mcast_wq);
 return ret;
}
