
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {unsigned long stamp; } ;


 int __part_stat_add (int,struct hd_struct*,int ,unsigned long) ;
 int io_ticks ;
 unsigned long part_in_flight (struct hd_struct*) ;
 int time_in_queue ;

__attribute__((used)) static void part_round_stats_single(int cpu, struct hd_struct *part,
        unsigned long now)
{
 if (now == part->stamp)
  return;

 if (part_in_flight(part)) {
  __part_stat_add(cpu, part, time_in_queue,
    part_in_flight(part) * (now - part->stamp));
  __part_stat_add(cpu, part, io_ticks, (now - part->stamp));
 }
 part->stamp = now;
}
