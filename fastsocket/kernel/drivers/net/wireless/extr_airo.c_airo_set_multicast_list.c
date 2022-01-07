
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; scalar_t__ mc_count; struct airo_info* ml_priv; } ;
struct airo_info {int flags; int thr_wait; int jobs; int sem; } ;


 int FLAG_PROMISC ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int JOB_PROMISC ;
 int airo_set_promisc (struct airo_info*) ;
 int change_bit (int ,int*) ;
 scalar_t__ down_trylock (int *) ;
 int set_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void airo_set_multicast_list(struct net_device *dev) {
 struct airo_info *ai = dev->ml_priv;

 if ((dev->flags ^ ai->flags) & IFF_PROMISC) {
  change_bit(FLAG_PROMISC, &ai->flags);
  if (down_trylock(&ai->sem) != 0) {
   set_bit(JOB_PROMISC, &ai->jobs);
   wake_up_interruptible(&ai->thr_wait);
  } else
   airo_set_promisc(ai);
 }

 if ((dev->flags&IFF_ALLMULTI)||dev->mc_count>0) {

 }
}
