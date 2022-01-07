
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int debug_info_t ;


 int debug_info_put (int *) ;
 int debug_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void
debug_unregister(debug_info_t * id)
{
 if (!id)
  goto out;
 mutex_lock(&debug_mutex);
 debug_info_put(id);
 mutex_unlock(&debug_mutex);

out:
 return;
}
