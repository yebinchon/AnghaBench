
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;
struct bio {void* bi_private; } ;


 int BUG () ;
 int DMCRIT (char*,struct io*) ;
 int DM_IO_MAX_REGIONS ;
 int IS_ALIGNED (unsigned long,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void store_io_and_region_in_bio(struct bio *bio, struct io *io,
           unsigned region)
{
 if (unlikely(!IS_ALIGNED((unsigned long)io, DM_IO_MAX_REGIONS))) {
  DMCRIT("Unaligned struct io pointer %p", io);
  BUG();
 }

 bio->bi_private = (void *)((unsigned long)io | region);
}
