
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned long max_write_behind; unsigned long daemon_sleep; } ;
struct TYPE_11__ {unsigned long new_chunk_sectors; unsigned long chunk_sectors; unsigned int raid_disks; int sync_speed_min; int sync_speed_max; unsigned int dev_sectors; int external; scalar_t__ persistent; int layout; int new_layout; TYPE_1__ bitmap_info; void* recovery_cp; } ;
struct raid_set {TYPE_5__ md; TYPE_6__* ti; TYPE_2__* raid_type; int print_flags; TYPE_4__* dev; } ;
typedef unsigned int sector_t ;
struct TYPE_12__ {unsigned int len; char* error; } ;
struct TYPE_9__ {int flags; void* recovery_offset; } ;
struct TYPE_10__ {TYPE_3__ rdev; } ;
struct TYPE_8__ {int level; unsigned int parity_devs; } ;


 unsigned long COUNTER_MAX ;
 int DMERR (char*,...) ;
 int DMPF_DAEMON_SLEEP ;
 int DMPF_MAX_RECOVERY_RATE ;
 int DMPF_MAX_WRITE_BEHIND ;
 int DMPF_MIN_RECOVERY_RATE ;
 int DMPF_NOSYNC ;
 int DMPF_RAID10_COPIES ;
 int DMPF_RAID10_FORMAT ;
 int DMPF_REBUILD ;
 int DMPF_REGION_SIZE ;
 int DMPF_STRIPE_CACHE ;
 int DMPF_SYNC ;
 int EINVAL ;
 unsigned long INT_MAX ;
 int In_sync ;
 unsigned long MAX_SCHEDULE_TIMEOUT ;
 void* MaxSector ;
 int WriteMostly ;
 int clear_bit (int ,int *) ;
 scalar_t__ dm_set_target_max_io_len (TYPE_6__*,unsigned int) ;
 int is_power_of_2 (unsigned long) ;
 scalar_t__ kstrtoul (char*,int,unsigned long*) ;
 int raid10_format_to_md_layout (char*,unsigned int) ;
 scalar_t__ raid5_set_cache_size (TYPE_5__*,int) ;
 scalar_t__ sector_div (unsigned int,unsigned int) ;
 int set_bit (int ,int *) ;
 int strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ validate_region_size (struct raid_set*,unsigned long) ;

__attribute__((used)) static int parse_raid_params(struct raid_set *rs, char **argv,
        unsigned num_raid_params)
{
 char *raid10_format = "near";
 unsigned raid10_copies = 2;
 unsigned i;
 unsigned long value, region_size = 0;
 sector_t sectors_per_dev = rs->ti->len;
 sector_t max_io_len;
 char *key;





 if ((kstrtoul(argv[0], 10, &value) < 0)) {
  rs->ti->error = "Bad chunk size";
  return -EINVAL;
 } else if (rs->raid_type->level == 1) {
  if (value)
   DMERR("Ignoring chunk size parameter for RAID 1");
  value = 0;
 } else if (!is_power_of_2(value)) {
  rs->ti->error = "Chunk size must be a power of 2";
  return -EINVAL;
 } else if (value < 8) {
  rs->ti->error = "Chunk size value is too small";
  return -EINVAL;
 }

 rs->md.new_chunk_sectors = rs->md.chunk_sectors = value;
 argv++;
 num_raid_params--;
 for (i = 0; i < rs->md.raid_disks; i++) {
  set_bit(In_sync, &rs->dev[i].rdev.flags);
  rs->dev[i].rdev.recovery_offset = MaxSector;
 }




 for (i = 0; i < num_raid_params; i++) {
  if (!strcasecmp(argv[i], "nosync")) {
   rs->md.recovery_cp = MaxSector;
   rs->print_flags |= DMPF_NOSYNC;
   continue;
  }
  if (!strcasecmp(argv[i], "sync")) {
   rs->md.recovery_cp = 0;
   rs->print_flags |= DMPF_SYNC;
   continue;
  }


  if ((i + 1) >= num_raid_params) {
   rs->ti->error = "Wrong number of raid parameters given";
   return -EINVAL;
  }

  key = argv[i++];


  if (!strcasecmp(key, "raid10_format")) {
   if (rs->raid_type->level != 10) {
    rs->ti->error = "'raid10_format' is an invalid parameter for this RAID type";
    return -EINVAL;
   }
   if (strcmp("near", argv[i])) {
    rs->ti->error = "Invalid 'raid10_format' value given";
    return -EINVAL;
   }
   raid10_format = argv[i];
   rs->print_flags |= DMPF_RAID10_FORMAT;
   continue;
  }

  if (kstrtoul(argv[i], 10, &value) < 0) {
   rs->ti->error = "Bad numerical argument given in raid params";
   return -EINVAL;
  }


  if (!strcasecmp(key, "rebuild")) {
   if (value >= rs->md.raid_disks) {
    rs->ti->error = "Invalid rebuild index given";
    return -EINVAL;
   }
   clear_bit(In_sync, &rs->dev[value].rdev.flags);
   rs->dev[value].rdev.recovery_offset = 0;
   rs->print_flags |= DMPF_REBUILD;
  } else if (!strcasecmp(key, "write_mostly")) {
   if (rs->raid_type->level != 1) {
    rs->ti->error = "write_mostly option is only valid for RAID1";
    return -EINVAL;
   }
   if (value >= rs->md.raid_disks) {
    rs->ti->error = "Invalid write_mostly drive index given";
    return -EINVAL;
   }
   set_bit(WriteMostly, &rs->dev[value].rdev.flags);
  } else if (!strcasecmp(key, "max_write_behind")) {
   if (rs->raid_type->level != 1) {
    rs->ti->error = "max_write_behind option is only valid for RAID1";
    return -EINVAL;
   }
   rs->print_flags |= DMPF_MAX_WRITE_BEHIND;





   value /= 2;
   if (value > COUNTER_MAX) {
    rs->ti->error = "Max write-behind limit out of range";
    return -EINVAL;
   }
   rs->md.bitmap_info.max_write_behind = value;
  } else if (!strcasecmp(key, "daemon_sleep")) {
   rs->print_flags |= DMPF_DAEMON_SLEEP;
   if (!value || (value > MAX_SCHEDULE_TIMEOUT)) {
    rs->ti->error = "daemon sleep period out of range";
    return -EINVAL;
   }
   rs->md.bitmap_info.daemon_sleep = value;
  } else if (!strcasecmp(key, "stripe_cache")) {
   rs->print_flags |= DMPF_STRIPE_CACHE;





   value /= 2;

   if ((rs->raid_type->level != 5) &&
       (rs->raid_type->level != 6)) {
    rs->ti->error = "Inappropriate argument: stripe_cache";
    return -EINVAL;
   }
   if (raid5_set_cache_size(&rs->md, (int)value)) {
    rs->ti->error = "Bad stripe_cache size";
    return -EINVAL;
   }
  } else if (!strcasecmp(key, "min_recovery_rate")) {
   rs->print_flags |= DMPF_MIN_RECOVERY_RATE;
   if (value > INT_MAX) {
    rs->ti->error = "min_recovery_rate out of range";
    return -EINVAL;
   }
   rs->md.sync_speed_min = (int)value;
  } else if (!strcasecmp(key, "max_recovery_rate")) {
   rs->print_flags |= DMPF_MAX_RECOVERY_RATE;
   if (value > INT_MAX) {
    rs->ti->error = "max_recovery_rate out of range";
    return -EINVAL;
   }
   rs->md.sync_speed_max = (int)value;
  } else if (!strcasecmp(key, "region_size")) {
   rs->print_flags |= DMPF_REGION_SIZE;
   region_size = value;
  } else if (!strcasecmp(key, "raid10_copies") &&
      (rs->raid_type->level == 10)) {
   if ((value < 2) || (value > 0xFF)) {
    rs->ti->error = "Bad value for 'raid10_copies'";
    return -EINVAL;
   }
   rs->print_flags |= DMPF_RAID10_COPIES;
   raid10_copies = value;
  } else {
   DMERR("Unable to parse RAID parameter: %s", key);
   rs->ti->error = "Unable to parse RAID parameters";
   return -EINVAL;
  }
 }

 if (validate_region_size(rs, region_size))
  return -EINVAL;

 if (rs->md.chunk_sectors)
  max_io_len = rs->md.chunk_sectors;
 else
  max_io_len = region_size;

 if (dm_set_target_max_io_len(rs->ti, max_io_len))
  return -EINVAL;

 if (rs->raid_type->level == 10) {
  if (raid10_copies > rs->md.raid_disks) {
   rs->ti->error = "Not enough devices to satisfy specification";
   return -EINVAL;
  }


  sectors_per_dev = rs->ti->len * raid10_copies;
  sector_div(sectors_per_dev, rs->md.raid_disks);

  rs->md.layout = raid10_format_to_md_layout(raid10_format,
          raid10_copies);
  rs->md.new_layout = rs->md.layout;
 } else if ((rs->raid_type->level > 1) &&
     sector_div(sectors_per_dev,
         (rs->md.raid_disks - rs->raid_type->parity_devs))) {
  rs->ti->error = "Target length not divisible by number of data devices";
  return -EINVAL;
 }
 rs->md.dev_sectors = sectors_per_dev;


 rs->md.persistent = 0;
 rs->md.external = 1;

 return 0;
}
