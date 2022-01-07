
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {int part0; } ;
struct bio {TYPE_1__* bi_bdev; } ;
struct TYPE_2__ {struct gendisk* bd_disk; } ;


 int bio_data_dir (struct bio*) ;
 unsigned long jiffies ;
 int part_dec_in_flight (int *,int const) ;
 int part_round_stats (int,int *) ;
 int part_stat_add (int,int *,int ,unsigned long) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 int * ticks ;

__attribute__((used)) static void nvme_end_io_acct(struct bio *bio, unsigned long start_time)
{
 struct gendisk *disk = bio->bi_bdev->bd_disk;
 const int rw = bio_data_dir(bio);
 unsigned long duration = jiffies - start_time;
 int cpu = part_stat_lock();
 part_stat_add(cpu, &disk->part0, ticks[rw], duration);
 part_round_stats(cpu, &disk->part0);
 part_dec_in_flight(&disk->part0, rw);
 part_stat_unlock();
}
