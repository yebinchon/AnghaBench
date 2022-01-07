
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int FANS_COUNT ;
 int applesmc_lock ;
 int applesmc_read_key (int ,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int applesmc_get_fan_count(void)
{
 int ret;
 u8 buffer[1];

 mutex_lock(&applesmc_lock);

 ret = applesmc_read_key(FANS_COUNT, buffer, 1);

 mutex_unlock(&applesmc_lock);
 if (ret)
  return ret;
 else
  return buffer[0];
}
