
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int end_jiffies; int start_jiffies; } ;
struct TYPE_3__ {int dev_to_init; } ;
struct raid_set {TYPE_2__ recover; TYPE_1__ set; } ;


 int ClearRSRecover (struct raid_set*) ;
 int jiffies ;

__attribute__((used)) static void set_end_recovery(struct raid_set *rs)
{
 ClearRSRecover(rs);

 rs->set.dev_to_init = -1;


 rs->recover.end_jiffies = jiffies;
 if (rs->recover.end_jiffies < rs->recover.start_jiffies)
  rs->recover.end_jiffies = ~0;
}
