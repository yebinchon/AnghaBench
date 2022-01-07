
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int polldev_mutex ;
 int polldev_users ;
 int polldev_wq ;

__attribute__((used)) static void input_polldev_stop_workqueue(void)
{
 mutex_lock(&polldev_mutex);

 if (!--polldev_users)
  destroy_workqueue(polldev_wq);

 mutex_unlock(&polldev_mutex);
}
