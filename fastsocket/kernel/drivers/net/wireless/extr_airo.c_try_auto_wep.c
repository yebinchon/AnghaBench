
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int flags; int thr_wait; int expires; } ;


 int FLAG_RADIO_DOWN ;
 int HZ ;
 int RUN_AT (int) ;
 scalar_t__ auto_wep ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void try_auto_wep(struct airo_info *ai)
{
 if (auto_wep && !(ai->flags & FLAG_RADIO_DOWN)) {
  ai->expires = RUN_AT(3*HZ);
  wake_up_interruptible(&ai->thr_wait);
 }
}
