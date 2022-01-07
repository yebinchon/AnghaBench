
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfag12864b_mutex ;
 int cfag12864b_queue () ;
 int cfag12864b_updating ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

unsigned char cfag12864b_enable(void)
{
 unsigned char ret;

 mutex_lock(&cfag12864b_mutex);

 if (!cfag12864b_updating) {
  cfag12864b_updating = 1;
  cfag12864b_queue();
  ret = 0;
 } else
  ret = 1;

 mutex_unlock(&cfag12864b_mutex);

 return ret;
}
