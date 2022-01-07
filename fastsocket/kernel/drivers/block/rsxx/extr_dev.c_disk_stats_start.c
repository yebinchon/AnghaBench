
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
 int part_inc_in_flight (struct hd_struct*,int) ;
 int part_round_stats (int,struct hd_struct*) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;

__attribute__((used)) static void disk_stats_start(struct rsxx_cardinfo *card, struct bio *bio)
{
 struct hd_struct *part0 = &card->gendisk->part0;
 int rw = bio_data_dir(bio);
 int cpu;

 cpu = part_stat_lock();

 part_round_stats(cpu, part0);
 part_inc_in_flight(part0, rw);

 part_stat_unlock();
}
