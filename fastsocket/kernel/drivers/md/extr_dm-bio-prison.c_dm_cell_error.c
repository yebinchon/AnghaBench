
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bio_prison_cell {int dummy; } ;
struct dm_bio_prison {int lock; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;


 int __cell_release (struct dm_bio_prison_cell*,struct bio_list*) ;
 int bio_io_error (struct bio*) ;
 int bio_list_init (struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dm_cell_error(struct dm_bio_prison *prison,
     struct dm_bio_prison_cell *cell)
{
 struct bio_list bios;
 struct bio *bio;
 unsigned long flags;

 bio_list_init(&bios);

 spin_lock_irqsave(&prison->lock, flags);
 __cell_release(cell, &bios);
 spin_unlock_irqrestore(&prison->lock, flags);

 while ((bio = bio_list_pop(&bios)))
  bio_io_error(bio);
}
