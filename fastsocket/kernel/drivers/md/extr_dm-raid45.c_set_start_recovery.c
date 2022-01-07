
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ end_jiffies; int start_jiffies; } ;
struct raid_set {TYPE_1__ recover; } ;


 int jiffies ;

__attribute__((used)) static void set_start_recovery(struct raid_set *rs)
{

 rs->recover.start_jiffies = jiffies;
 rs->recover.end_jiffies = 0;
}
