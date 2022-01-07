
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int oprofile_started ;
 int start_mutex ;

int oprofile_set_ulong(unsigned long *addr, unsigned long val)
{
 int err = -EBUSY;

 mutex_lock(&start_mutex);
 if (!oprofile_started) {
  *addr = val;
  err = 0;
 }
 mutex_unlock(&start_mutex);

 return err;
}
