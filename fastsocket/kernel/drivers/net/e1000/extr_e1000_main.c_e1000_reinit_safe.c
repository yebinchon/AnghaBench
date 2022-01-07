
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_adapter {int flags; int mutex; } ;


 int __E1000_RESETTING ;
 int clear_bit (int ,int *) ;
 int e1000_down (struct e1000_adapter*) ;
 int e1000_up (struct e1000_adapter*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void e1000_reinit_safe(struct e1000_adapter *adapter)
{
 while (test_and_set_bit(__E1000_RESETTING, &adapter->flags))
  msleep(1);
 mutex_lock(&adapter->mutex);
 e1000_down(adapter);
 e1000_up(adapter);
 mutex_unlock(&adapter->mutex);
 clear_bit(__E1000_RESETTING, &adapter->flags);
}
