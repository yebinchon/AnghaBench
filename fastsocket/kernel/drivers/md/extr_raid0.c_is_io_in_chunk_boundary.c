
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int dummy; } ;
struct bio {unsigned int bi_sector; } ;
typedef unsigned int sector_t ;


 unsigned int bio_sectors (struct bio*) ;
 int is_power_of_2 (unsigned int) ;
 scalar_t__ likely (int ) ;
 unsigned int sector_div (unsigned int,unsigned int) ;

__attribute__((used)) static inline int is_io_in_chunk_boundary(struct mddev *mddev,
   unsigned int chunk_sects, struct bio *bio)
{
 if (likely(is_power_of_2(chunk_sects))) {
  return chunk_sects >= ((bio->bi_sector & (chunk_sects-1))
     + bio_sectors(bio));
 } else{
  sector_t sector = bio->bi_sector;
  return chunk_sects >= (sector_div(sector, chunk_sects)
      + bio_sectors(bio));
 }
}
