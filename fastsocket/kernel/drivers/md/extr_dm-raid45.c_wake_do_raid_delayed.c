
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dws_do_raid; int wq; } ;
struct raid_set {TYPE_1__ io; } ;


 int queue_delayed_work (int ,int *,unsigned long) ;

__attribute__((used)) static void wake_do_raid_delayed(struct raid_set *rs, unsigned long delay)
{
 queue_delayed_work(rs->io.wq, &rs->io.dws_do_raid, delay);
}
