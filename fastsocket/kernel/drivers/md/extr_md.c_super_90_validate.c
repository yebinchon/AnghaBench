
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int offset; int default_offset; int default_space; scalar_t__ space; int * file; } ;
struct mddev {int minor_version; int chunk_sectors; int dev_sectors; scalar_t__ events; int reshape_backwards; int new_chunk_sectors; int level; TYPE_1__* bitmap; int * pers; TYPE_2__ bitmap_info; int max_disks; scalar_t__ uuid; void* recovery_cp; int layout; int new_layout; int new_level; int delta_disks; void* reshape_position; int raid_disks; scalar_t__* clevel; int utime; int ctime; scalar_t__ external; int patch_version; scalar_t__ major_version; } ;
struct md_rdev {int raid_disk; size_t desc_nr; int flags; scalar_t__ recovery_offset; int sb_page; } ;
typedef int sector_t ;
struct TYPE_9__ {int minor_version; int chunk_size; int new_chunk; int state; scalar_t__ events_hi; scalar_t__ cp_events_hi; scalar_t__ events_lo; scalar_t__ cp_events_lo; TYPE_4__* disks; int set_uuid3; int set_uuid2; int set_uuid1; int set_uuid0; void* recovery_cp; int new_layout; int new_level; int delta_disks; void* reshape_position; scalar_t__ size; int raid_disks; int layout; int level; int utime; int ctime; int patch_version; } ;
typedef TYPE_3__ mdp_super_t ;
struct TYPE_10__ {int state; int raid_disk; } ;
typedef TYPE_4__ mdp_disk_t ;
typedef scalar_t__ __u64 ;
struct TYPE_7__ {scalar_t__ events_cleared; } ;


 int EINVAL ;
 int Faulty ;
 int In_sync ;
 int LEVEL_MULTIPATH ;
 int MD_DISK_ACTIVE ;
 int MD_DISK_FAULTY ;
 int MD_DISK_SYNC ;
 int MD_DISK_WRITEMOSTLY ;
 int MD_SB_BITMAP_PRESENT ;
 int MD_SB_BYTES ;
 int MD_SB_CLEAN ;
 int MD_SB_DISKS ;
 void* MaxSector ;
 int WriteMostly ;
 int clear_bit (int ,int *) ;
 scalar_t__ md_event (TYPE_3__*) ;
 int memcpy (scalar_t__,int *,int) ;
 TYPE_3__* page_address (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int super_90_validate(struct mddev *mddev, struct md_rdev *rdev)
{
 mdp_disk_t *desc;
 mdp_super_t *sb = page_address(rdev->sb_page);
 __u64 ev1 = md_event(sb);

 rdev->raid_disk = -1;
 clear_bit(Faulty, &rdev->flags);
 clear_bit(In_sync, &rdev->flags);
 clear_bit(WriteMostly, &rdev->flags);

 if (mddev->raid_disks == 0) {
  mddev->major_version = 0;
  mddev->minor_version = sb->minor_version;
  mddev->patch_version = sb->patch_version;
  mddev->external = 0;
  mddev->chunk_sectors = sb->chunk_size >> 9;
  mddev->ctime = sb->ctime;
  mddev->utime = sb->utime;
  mddev->level = sb->level;
  mddev->clevel[0] = 0;
  mddev->layout = sb->layout;
  mddev->raid_disks = sb->raid_disks;
  mddev->dev_sectors = ((sector_t)sb->size) * 2;
  mddev->events = ev1;
  mddev->bitmap_info.offset = 0;
  mddev->bitmap_info.space = 0;

  mddev->bitmap_info.default_offset = MD_SB_BYTES >> 9;
  mddev->bitmap_info.default_space = 64*2 - (MD_SB_BYTES >> 9);
  mddev->reshape_backwards = 0;

  if (mddev->minor_version >= 91) {
   mddev->reshape_position = sb->reshape_position;
   mddev->delta_disks = sb->delta_disks;
   mddev->new_level = sb->new_level;
   mddev->new_layout = sb->new_layout;
   mddev->new_chunk_sectors = sb->new_chunk >> 9;
   if (mddev->delta_disks < 0)
    mddev->reshape_backwards = 1;
  } else {
   mddev->reshape_position = MaxSector;
   mddev->delta_disks = 0;
   mddev->new_level = mddev->level;
   mddev->new_layout = mddev->layout;
   mddev->new_chunk_sectors = mddev->chunk_sectors;
  }

  if (sb->state & (1<<MD_SB_CLEAN))
   mddev->recovery_cp = MaxSector;
  else {
   if (sb->events_hi == sb->cp_events_hi &&
    sb->events_lo == sb->cp_events_lo) {
    mddev->recovery_cp = sb->recovery_cp;
   } else
    mddev->recovery_cp = 0;
  }

  memcpy(mddev->uuid+0, &sb->set_uuid0, 4);
  memcpy(mddev->uuid+4, &sb->set_uuid1, 4);
  memcpy(mddev->uuid+8, &sb->set_uuid2, 4);
  memcpy(mddev->uuid+12,&sb->set_uuid3, 4);

  mddev->max_disks = MD_SB_DISKS;

  if (sb->state & (1<<MD_SB_BITMAP_PRESENT) &&
      mddev->bitmap_info.file == ((void*)0)) {
   mddev->bitmap_info.offset =
    mddev->bitmap_info.default_offset;
   mddev->bitmap_info.space =
    mddev->bitmap_info.space;
  }

 } else if (mddev->pers == ((void*)0)) {


  ++ev1;
  if (sb->disks[rdev->desc_nr].state & (
       (1<<MD_DISK_SYNC) | (1 << MD_DISK_ACTIVE)))
   if (ev1 < mddev->events)
    return -EINVAL;
 } else if (mddev->bitmap) {



  if (ev1 < mddev->bitmap->events_cleared)
   return 0;
 } else {
  if (ev1 < mddev->events)

   return 0;
 }

 if (mddev->level != LEVEL_MULTIPATH) {
  desc = sb->disks + rdev->desc_nr;

  if (desc->state & (1<<MD_DISK_FAULTY))
   set_bit(Faulty, &rdev->flags);
  else if (desc->state & (1<<MD_DISK_SYNC) ) {

   set_bit(In_sync, &rdev->flags);
   rdev->raid_disk = desc->raid_disk;
  } else if (desc->state & (1<<MD_DISK_ACTIVE)) {



   if (mddev->minor_version >= 91) {
    rdev->recovery_offset = 0;
    rdev->raid_disk = desc->raid_disk;
   }
  }
  if (desc->state & (1<<MD_DISK_WRITEMOSTLY))
   set_bit(WriteMostly, &rdev->flags);
 } else
  set_bit(In_sync, &rdev->flags);
 return 0;
}
