
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_RSCS ;
 int crw_handler_mutex ;
 int ** crw_handlers ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void crw_unregister_handler(int rsc)
{
 if ((rsc < 0) || (rsc >= NR_RSCS))
  return;
 mutex_lock(&crw_handler_mutex);
 crw_handlers[rsc] = ((void*)0);
 mutex_unlock(&crw_handler_mutex);
}
