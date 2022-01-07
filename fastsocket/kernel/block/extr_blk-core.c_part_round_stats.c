
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hd_struct {scalar_t__ partno; } ;
struct TYPE_2__ {struct hd_struct part0; } ;


 unsigned long jiffies ;
 int part_round_stats_single (int,struct hd_struct*,unsigned long) ;
 TYPE_1__* part_to_disk (struct hd_struct*) ;

void part_round_stats(int cpu, struct hd_struct *part)
{
 unsigned long now = jiffies;

 if (part->partno)
  part_round_stats_single(cpu, &part_to_disk(part)->part0, now);
 part_round_stats_single(cpu, part, now);
}
