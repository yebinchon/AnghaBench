
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ws_do_table_event; } ;
struct raid_set {TYPE_1__ io; } ;


 int ClearRSScBusy (struct raid_set*) ;
 int TestSetRSScBusy (struct raid_set*) ;
 scalar_t__ sc_busy (struct raid_set*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void do_busy_event(struct raid_set *rs)
{
 if (sc_busy(rs)) {
  if (!TestSetRSScBusy(rs))
   schedule_work(&rs->io.ws_do_table_event);
 } else
  ClearRSScBusy(rs);
}
