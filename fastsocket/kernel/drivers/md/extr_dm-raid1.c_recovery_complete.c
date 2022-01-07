
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int nr_mirrors; int * mirror; } ;
struct dm_region {int dummy; } ;


 int DMERR_LIMIT (char*,...) ;
 int DM_RAID1_SYNC_ERROR ;
 int dm_rh_recovery_end (struct dm_region*,int) ;
 struct mirror_set* dm_rh_region_context (struct dm_region*) ;
 int fail_mirror (int *,int ) ;
 int * get_default_mirror (struct mirror_set*) ;
 scalar_t__ test_bit (int,unsigned long*) ;

__attribute__((used)) static void recovery_complete(int read_err, unsigned long write_err,
         void *context)
{
 struct dm_region *reg = context;
 struct mirror_set *ms = dm_rh_region_context(reg);
 int m, bit = 0;

 if (read_err) {

  DMERR_LIMIT("Unable to read primary mirror during recovery");
  fail_mirror(get_default_mirror(ms), DM_RAID1_SYNC_ERROR);
 }

 if (write_err) {
  DMERR_LIMIT("Write error during recovery (error = 0x%lx)",
       write_err);




  for (m = 0; m < ms->nr_mirrors; m++) {
   if (&ms->mirror[m] == get_default_mirror(ms))
    continue;
   if (test_bit(bit, &write_err))
    fail_mirror(ms->mirror + m,
         DM_RAID1_SYNC_ERROR);
   bit++;
  }
 }

 dm_rh_recovery_end(reg, !(read_err || write_err));
}
