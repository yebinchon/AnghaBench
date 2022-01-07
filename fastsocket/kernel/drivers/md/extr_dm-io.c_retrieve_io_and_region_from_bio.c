
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;
struct bio {scalar_t__ bi_private; } ;


 int DM_IO_MAX_REGIONS ;

__attribute__((used)) static void retrieve_io_and_region_from_bio(struct bio *bio, struct io **io,
           unsigned *region)
{
 unsigned long val = (unsigned long)bio->bi_private;

 *io = (void *)(val & -(unsigned long)DM_IO_MAX_REGIONS);
 *region = val & (DM_IO_MAX_REGIONS - 1);
}
