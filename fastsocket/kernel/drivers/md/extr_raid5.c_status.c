
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct r5conf {int raid_disks; TYPE_2__* disks; } ;
struct mddev {int chunk_sectors; scalar_t__ degraded; int layout; int level; struct r5conf* private; } ;
struct TYPE_4__ {TYPE_1__* rdev; } ;
struct TYPE_3__ {int flags; } ;


 int In_sync ;
 int seq_printf (struct seq_file*,char*,...) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void status(struct seq_file *seq, struct mddev *mddev)
{
 struct r5conf *conf = mddev->private;
 int i;

 seq_printf(seq, " level %d, %dk chunk, algorithm %d", mddev->level,
  mddev->chunk_sectors / 2, mddev->layout);
 seq_printf (seq, " [%d/%d] [", conf->raid_disks, conf->raid_disks - mddev->degraded);
 for (i = 0; i < conf->raid_disks; i++)
  seq_printf (seq, "%s",
          conf->disks[i].rdev &&
          test_bit(In_sync, &conf->disks[i].rdev->flags) ? "U" : "_");
 seq_printf (seq, "]");
}
