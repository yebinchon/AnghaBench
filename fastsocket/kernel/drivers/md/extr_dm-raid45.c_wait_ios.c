
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int suspendq; } ;
struct raid_set {TYPE_1__ io; } ;


 int io_ref (struct raid_set*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void wait_ios(struct raid_set *rs)
{
 wait_event(rs->io.suspendq, !io_ref(rs));
}
