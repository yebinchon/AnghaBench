
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ chp_info_expires ;
 int info_lock ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void info_expire(void)
{
 mutex_lock(&info_lock);
 chp_info_expires = jiffies - 1;
 mutex_unlock(&info_lock);
}
