
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct zd_chip {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_beacon_interval (struct zd_chip*,int ,int ,int) ;

int zd_set_beacon_interval(struct zd_chip *chip, u16 interval, u8 dtim_period,
      int type)
{
 int r;

 mutex_lock(&chip->mutex);
 r = set_beacon_interval(chip, interval, dtim_period, type);
 mutex_unlock(&chip->mutex);
 return r;
}
