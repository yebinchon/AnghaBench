
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i8042_mutex ;
 int mutex_unlock (int *) ;

void i8042_unlock_chip(void)
{
 mutex_unlock(&i8042_mutex);
}
