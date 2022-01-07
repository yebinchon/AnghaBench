
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsxx_cardinfo {TYPE_1__* gendisk; } ;
struct hd_struct {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct hd_struct part0; } ;


 int bio_data_dir (struct bio*) ;
 unsigned long bio_sectors (struct bio*) ;
 int * ios ;
 unsigned long jiffies ;
 int part_dec_in_flight (struct hd_struct*,int) ;
 int part_round_stats (int,struct hd_struct*) ;
 int part_stat_add (int,struct hd_struct*,int ,unsigned long) ;
 int part_stat_inc (int,struct hd_struct*,int ) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 int * sectors ;
 int * ticks ;

__attribute__((used)) static void disk_stats_complete(struct rsxx_cardinfo *card,
    struct bio *bio,
    unsigned long start_time)
{
 struct hd_struct *part0 = &card->gendisk->part0;
 unsigned long duration = jiffies - start_time;
 int rw = bio_data_dir(bio);
 int cpu;

 cpu = part_stat_lock();

 part_stat_add(cpu, part0, sectors[rw], bio_sectors(bio));
 part_stat_inc(cpu, part0, ios[rw]);
 part_stat_add(cpu, part0, ticks[rw], duration);

 part_round_stats(cpu, part0);
 part_dec_in_flight(part0, rw);

 part_stat_unlock();
}
