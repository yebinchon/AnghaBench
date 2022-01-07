
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i8042_mutex ;
 int mutex_lock (int *) ;

void i8042_lock_chip(void)
{
 mutex_lock(&i8042_mutex);
}
