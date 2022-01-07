
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_call {int list; } ;


 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcall ;
 int rcall_mutex ;

void register_reset_call(struct reset_call *reset)
{
 mutex_lock(&rcall_mutex);
 list_add(&reset->list, &rcall);
 mutex_unlock(&rcall_mutex);
}
