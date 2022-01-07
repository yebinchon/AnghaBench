
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int suspendq; int in_process; } ;
struct raid_set {TYPE_1__ io; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ io_ref (struct raid_set*) ;
 int wake_up (int *) ;

__attribute__((used)) static void io_put(struct raid_set *rs)
{

 if (atomic_dec_and_test(&rs->io.in_process))
  wake_up(&rs->io.suspendq);
 else
  BUG_ON(io_ref(rs) < 0);
}
