
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int work; } ;
struct TYPE_4__ {TYPE_1__ dws_do_raid; int wq; } ;
struct raid_set {TYPE_2__ io; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void wake_do_raid(void *context)
{
 struct raid_set *rs = context;

 queue_work(rs->io.wq, &rs->io.dws_do_raid.work);
}
