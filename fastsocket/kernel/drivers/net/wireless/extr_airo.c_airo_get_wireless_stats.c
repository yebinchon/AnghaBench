
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct airo_info* ml_priv; } ;
struct iw_statistics {int dummy; } ;
struct airo_info {struct iw_statistics wstats; int thr_wait; int jobs; int sem; } ;


 int JOB_WSTATS ;
 int airo_read_wireless_stats (struct airo_info*) ;
 scalar_t__ down_trylock (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static struct iw_statistics *airo_get_wireless_stats(struct net_device *dev)
{
 struct airo_info *local = dev->ml_priv;

 if (!test_bit(JOB_WSTATS, &local->jobs)) {

  if (down_trylock(&local->sem) != 0) {
   set_bit(JOB_WSTATS, &local->jobs);
   wake_up_interruptible(&local->thr_wait);
  } else
   airo_read_wireless_stats(local);
 }

 return &local->wstats;
}
