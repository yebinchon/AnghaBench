
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {struct mapped_device* queuedata; } ;
struct mapped_device {int io_lock; int flags; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int part0; } ;


 int DMF_BLOCK_IO_FOR_SUSPEND ;
 scalar_t__ READA ;
 int __split_and_process_bio (struct mapped_device*,struct bio*) ;
 int bio_data_dir (struct bio*) ;
 int bio_io_error (struct bio*) ;
 scalar_t__ bio_rw (struct bio*) ;
 int bio_sectors (struct bio*) ;
 TYPE_1__* dm_disk (struct mapped_device*) ;
 int down_read (int *) ;
 int * ios ;
 int part_stat_add (int,int *,int ,int ) ;
 int part_stat_inc (int,int *,int ) ;
 int part_stat_lock () ;
 int part_stat_unlock () ;
 int queue_io (struct mapped_device*,struct bio*) ;
 int * sectors ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;
 int up_read (int *) ;

__attribute__((used)) static int _dm_request(struct request_queue *q, struct bio *bio)
{
 int rw = bio_data_dir(bio);
 struct mapped_device *md = q->queuedata;
 int cpu;

 down_read(&md->io_lock);

 cpu = part_stat_lock();
 part_stat_inc(cpu, &dm_disk(md)->part0, ios[rw]);
 part_stat_add(cpu, &dm_disk(md)->part0, sectors[rw], bio_sectors(bio));
 part_stat_unlock();


 if (unlikely(test_bit(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags))) {
  up_read(&md->io_lock);

  if (bio_rw(bio) != READA)
   queue_io(md, bio);
  else
   bio_io_error(bio);
  return 0;
 }

 __split_and_process_bio(md, bio);
 up_read(&md->io_lock);
 return 0;
}
