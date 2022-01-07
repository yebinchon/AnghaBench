
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct saa7164_histogram {TYPE_1__* counter1; } ;
struct TYPE_2__ {scalar_t__ val; int update_time; int count; } ;


 int jiffies ;

void saa7164_histogram_update(struct saa7164_histogram *hg, u32 val)
{
 int i;
 for (i = 0; i < 64; i++) {
  if (val <= hg->counter1[i].val) {
   hg->counter1[i].count++;
   hg->counter1[i].update_time = jiffies;
   break;
  }
 }
}
