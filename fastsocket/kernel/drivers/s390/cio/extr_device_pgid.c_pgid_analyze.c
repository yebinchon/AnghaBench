
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {scalar_t__ state2; } ;
struct TYPE_7__ {TYPE_2__ ps; } ;
struct pgid {TYPE_3__ inf; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_8__ {struct pgid global_pgid; } ;
struct TYPE_5__ {int pgid_valid_mask; struct pgid* pgid; } ;


 scalar_t__ SNID_STATE2_RESVD_ELSE ;
 TYPE_4__** channel_subsystems ;
 scalar_t__ pgid_cmp (struct pgid*,struct pgid*) ;
 scalar_t__ pgid_is_reset (struct pgid*) ;

__attribute__((used)) static void pgid_analyze(struct ccw_device *cdev, struct pgid **p,
    int *mismatch, int *reserved, u8 *reset)
{
 struct pgid *pgid = &cdev->private->pgid[0];
 struct pgid *first = ((void*)0);
 int lpm;
 int i;

 *mismatch = 0;
 *reserved = 0;
 *reset = 0;
 for (i = 0, lpm = 0x80; i < 8; i++, pgid++, lpm >>= 1) {
  if ((cdev->private->pgid_valid_mask & lpm) == 0)
   continue;
  if (pgid->inf.ps.state2 == SNID_STATE2_RESVD_ELSE)
   *reserved = 1;
  if (pgid_is_reset(pgid)) {
   *reset |= lpm;
   continue;
  }
  if (!first) {
   first = pgid;
   continue;
  }
  if (pgid_cmp(pgid, first) != 0)
   *mismatch = 1;
 }
 if (!first)
  first = &channel_subsystems[0]->global_pgid;
 *p = first;
}
