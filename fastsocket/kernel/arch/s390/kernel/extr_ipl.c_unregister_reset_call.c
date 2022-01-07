
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_call {int list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcall_mutex ;

void unregister_reset_call(struct reset_call *reset)
{
 mutex_lock(&rcall_mutex);
 list_del(&reset->list);
 mutex_unlock(&rcall_mutex);
}
