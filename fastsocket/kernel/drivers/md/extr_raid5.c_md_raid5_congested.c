
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int inactive_list; scalar_t__ quiesce; scalar_t__ inactive_blocked; } ;
struct mddev {struct r5conf* private; } ;


 scalar_t__ list_empty_careful (int *) ;

int md_raid5_congested(struct mddev *mddev, int bits)
{
 struct r5conf *conf = mddev->private;





 if (conf->inactive_blocked)
  return 1;
 if (conf->quiesce)
  return 1;
 if (list_empty_careful(&conf->inactive_list))
  return 1;

 return 0;
}
