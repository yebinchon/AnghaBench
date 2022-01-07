
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror_set {TYPE_1__* mirror; } ;
struct dm_target {char* error; int table; } ;
struct TYPE_2__ {unsigned long long offset; scalar_t__ error_type; int error_count; struct mirror_set* ms; int dev; } ;


 int EINVAL ;
 int ENXIO ;
 int atomic_set (int *,int ) ;
 scalar_t__ dm_get_device (struct dm_target*,char*,int ,int *) ;
 int dm_table_get_mode (int ) ;
 int sscanf (char*,char*,unsigned long long*,char*) ;

__attribute__((used)) static int get_mirror(struct mirror_set *ms, struct dm_target *ti,
        unsigned int mirror, char **argv)
{
 unsigned long long offset;
 char dummy;

 if (sscanf(argv[1], "%llu%c", &offset, &dummy) != 1) {
  ti->error = "Invalid offset";
  return -EINVAL;
 }

 if (dm_get_device(ti, argv[0], dm_table_get_mode(ti->table),
     &ms->mirror[mirror].dev)) {
  ti->error = "Device lookup failure";
  return -ENXIO;
 }

 ms->mirror[mirror].ms = ms;
 atomic_set(&(ms->mirror[mirror].error_count), 0);
 ms->mirror[mirror].error_type = 0;
 ms->mirror[mirror].offset = offset;

 return 0;
}
