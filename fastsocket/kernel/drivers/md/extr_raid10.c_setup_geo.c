
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int layout; int chunk_sectors; int raid_disks; int delta_disks; int new_layout; int new_chunk_sectors; } ;
struct geom {int raid_disks; int near_copies; int far_copies; int far_offset; int far_set_size; int chunk_mask; int chunk_shift; } ;
typedef enum geo_type { ____Placeholder_geo_type } geo_type ;


 int PAGE_SIZE ;
 int ffz (int) ;



 int is_power_of_2 (int) ;

__attribute__((used)) static int setup_geo(struct geom *geo, struct mddev *mddev, enum geo_type new)
{
 int nc, fc, fo;
 int layout, chunk, disks;
 switch (new) {
 case 129:
  layout = mddev->layout;
  chunk = mddev->chunk_sectors;
  disks = mddev->raid_disks - mddev->delta_disks;
  break;
 case 130:
  layout = mddev->new_layout;
  chunk = mddev->new_chunk_sectors;
  disks = mddev->raid_disks;
  break;
 default:
 case 128:

  layout = mddev->new_layout;
  chunk = mddev->new_chunk_sectors;
  disks = mddev->raid_disks + mddev->delta_disks;
  break;
 }
 if (layout >> 18)
  return -1;
 if (chunk < (PAGE_SIZE >> 9) ||
     !is_power_of_2(chunk))
  return -2;
 nc = layout & 255;
 fc = (layout >> 8) & 255;
 fo = layout & (1<<16);
 geo->raid_disks = disks;
 geo->near_copies = nc;
 geo->far_copies = fc;
 geo->far_offset = fo;
 geo->far_set_size = (layout & (1<<17)) ? disks / fc : disks;
 geo->chunk_mask = chunk - 1;
 geo->chunk_shift = ffz(~chunk);
 return nc*fc;
}
