
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strip_zone {int nb_dev; } ;
struct r0conf {struct strip_zone* strip_zone; struct md_rdev** devlist; } ;
struct mddev {unsigned int chunk_sectors; struct r0conf* private; } ;
struct md_rdev {int dummy; } ;
typedef unsigned int sector_t ;


 int ffz (unsigned int) ;
 scalar_t__ is_power_of_2 (unsigned int) ;
 int sector_div (unsigned int,unsigned int) ;

__attribute__((used)) static struct md_rdev *map_sector(struct mddev *mddev, struct strip_zone *zone,
    sector_t sector, sector_t *sector_offset)
{
 unsigned int sect_in_chunk;
 sector_t chunk;
 struct r0conf *conf = mddev->private;
 int raid_disks = conf->strip_zone[0].nb_dev;
 unsigned int chunk_sects = mddev->chunk_sectors;

 if (is_power_of_2(chunk_sects)) {
  int chunksect_bits = ffz(~chunk_sects);

  sect_in_chunk = sector & (chunk_sects - 1);
  sector >>= chunksect_bits;

  chunk = *sector_offset;

  sector_div(chunk, zone->nb_dev << chunksect_bits);
 } else{
  sect_in_chunk = sector_div(sector, chunk_sects);
  chunk = *sector_offset;
  sector_div(chunk, chunk_sects * zone->nb_dev);
 }





 *sector_offset = (chunk * chunk_sects) + sect_in_chunk;
 return conf->devlist[(zone - conf->strip_zone)*raid_disks
        + sector_div(sector, zone->nb_dev)];
}
