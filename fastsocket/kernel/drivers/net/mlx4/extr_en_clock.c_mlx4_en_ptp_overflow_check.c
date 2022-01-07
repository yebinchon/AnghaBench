
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_dev {scalar_t__ last_overflow_check; int clock; scalar_t__ overflow_period; } ;


 scalar_t__ jiffies ;
 int time_is_before_jiffies (scalar_t__) ;
 int timecounter_read (int *) ;

void mlx4_en_ptp_overflow_check(struct mlx4_en_dev *mdev)
{
 bool timeout = time_is_before_jiffies(mdev->last_overflow_check +
           mdev->overflow_period);

 if (timeout) {
  timecounter_read(&mdev->clock);
  mdev->last_overflow_check = jiffies;
 }
}
