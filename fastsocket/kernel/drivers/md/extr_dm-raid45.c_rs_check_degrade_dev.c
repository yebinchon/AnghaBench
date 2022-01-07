
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stripe {scalar_t__ key; } ;
struct TYPE_10__ {int ws_do_table_event; } ;
struct TYPE_8__ {unsigned int raid_devs; unsigned int ei; TYPE_1__* raid_type; int failed_devs; } ;
struct raid_set {TYPE_4__ io; TYPE_5__* dev; TYPE_2__ set; } ;
struct TYPE_11__ {TYPE_3__* dev; } ;
struct TYPE_9__ {int bdev; } ;
struct TYPE_7__ {scalar_t__ parity_devs; } ;


 int BDEVNAME_SIZE ;
 int DMERR (char*,...) ;
 scalar_t__ DevFailed (TYPE_5__*) ;
 int SetRSProhibitWrites (struct raid_set*) ;
 scalar_t__ TestSetDevFailed (TYPE_5__*) ;
 int TestSetRSDead (struct raid_set*) ;
 int TestSetRSDegraded (struct raid_set*) ;
 scalar_t__ atomic_inc_return (int *) ;
 int bdevname (int ,char*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void rs_check_degrade_dev(struct raid_set *rs,
     struct stripe *stripe, unsigned p)
{
 if (TestSetDevFailed(rs->dev + p))
  return;


 if ((atomic_inc_return(&rs->set.failed_devs) >
      rs->set.raid_type->parity_devs) &&
      !TestSetRSDead(rs)) {

  unsigned p;
  char buf[BDEVNAME_SIZE];

  DMERR("FATAL: too many devices failed -> RAID set broken");
  for (p = 0; p < rs->set.raid_devs; p++) {
   if (DevFailed(rs->dev + p))
    DMERR("device /dev/%s failed",
          bdevname(rs->dev[p].dev->bdev, buf));
  }
 }


 if (!TestSetRSDegraded(rs)) {
  char buf[BDEVNAME_SIZE];


  rs->set.ei = p;
  DMERR("CRITICAL: %sio error on device /dev/%s "
        "in region=%llu; DEGRADING RAID set\n",
        stripe ? "" : "FAKED ",
        bdevname(rs->dev[p].dev->bdev, buf),
        (unsigned long long) (stripe ? stripe->key : 0));
  DMERR("further device error messages suppressed");
 }


 SetRSProhibitWrites(rs);
 schedule_work(&rs->io.ws_do_table_event);
}
