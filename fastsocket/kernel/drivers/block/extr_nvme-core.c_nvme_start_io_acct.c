
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {int part0; } ;
struct bio {TYPE_1__* bi_bdev; } ;
struct TYPE_2__ {struct gendisk* bd_disk; } ;


 int bio_data_dir (struct bio*) ;
 int bio_sectors (struct bio*) ;
 int * ios ;
 int part_inc_in_flight (int *,int const) ;
 int part_round_stats (int,int *) ;
 int part_stat_add (int,int *,int ,int ) ;
 int part_stat_inc (int,int *,int ) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 int * sectors ;

__attribute__((used)) static void nvme_start_io_acct(struct bio *bio)
{
 struct gendisk *disk = bio->bi_bdev->bd_disk;
 const int rw = bio_data_dir(bio);
 int cpu = part_stat_lock();
 part_round_stats(cpu, &disk->part0);
 part_stat_inc(cpu, &disk->part0, ios[rw]);
 part_stat_add(cpu, &disk->part0, sectors[rw], bio_sectors(bio));
 part_inc_in_flight(&disk->part0, rw);
 part_stat_unlock();
}
