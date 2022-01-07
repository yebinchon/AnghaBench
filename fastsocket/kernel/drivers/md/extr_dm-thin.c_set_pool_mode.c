
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int mode; } ;
struct pool_c {TYPE_3__ adjusted_pf; } ;
struct TYPE_5__ {int mode; } ;
struct pool {TYPE_2__ pf; void* process_prepared_discard; void* process_prepared_mapping; void* process_discard; void* process_bio; int pmd; int pool_md; TYPE_1__* ti; } ;
typedef enum pool_mode { ____Placeholder_pool_mode } pool_mode ;
struct TYPE_4__ {struct pool_c* private; } ;


 int DMERR (char*,int ) ;




 int dm_device_name (int ) ;
 int dm_pool_metadata_needs_check (int ) ;
 int dm_pool_metadata_read_only (int ) ;
 int dm_pool_metadata_read_write (int ) ;
 int error_retry_list (struct pool*) ;
 int get_pool_mode (struct pool*) ;
 int notify_of_pool_mode_change (struct pool*,char*) ;
 void* process_bio ;
 void* process_bio_fail ;
 void* process_bio_read_only ;
 void* process_bio_success ;
 void* process_discard ;
 void* process_prepared_discard ;
 void* process_prepared_discard_fail ;
 void* process_prepared_discard_passdown ;
 void* process_prepared_mapping ;
 void* process_prepared_mapping_fail ;

__attribute__((used)) static void set_pool_mode(struct pool *pool, enum pool_mode new_mode)
{
 struct pool_c *pt = pool->ti->private;
 bool needs_check = dm_pool_metadata_needs_check(pool->pmd);
 enum pool_mode old_mode = get_pool_mode(pool);





 if (new_mode == 128 && needs_check) {
  DMERR("%s: unable to switch pool to write mode until repaired.",
        dm_device_name(pool->pool_md));
  if (old_mode != new_mode)
   new_mode = old_mode;
  else
   new_mode = 129;
 }





 if (old_mode == 131)
  new_mode = old_mode;

 switch (new_mode) {
 case 131:
  if (old_mode != new_mode)
   notify_of_pool_mode_change(pool, "failure");
  dm_pool_metadata_read_only(pool->pmd);
  pool->process_bio = process_bio_fail;
  pool->process_discard = process_bio_fail;
  pool->process_prepared_mapping = process_prepared_mapping_fail;
  pool->process_prepared_discard = process_prepared_discard_fail;

  error_retry_list(pool);
  break;

 case 129:
  if (old_mode != new_mode)
   notify_of_pool_mode_change(pool, "read-only");
  dm_pool_metadata_read_only(pool->pmd);
  pool->process_bio = process_bio_read_only;
  pool->process_discard = process_bio_success;
  pool->process_prepared_mapping = process_prepared_mapping_fail;
  pool->process_prepared_discard = process_prepared_discard_passdown;

  error_retry_list(pool);
  break;

 case 130:
  if (old_mode != new_mode)
   notify_of_pool_mode_change(pool, "out-of-data-space");
  pool->process_bio = process_bio_read_only;
  pool->process_discard = process_discard;
  pool->process_prepared_mapping = process_prepared_mapping;
  pool->process_prepared_discard = process_prepared_discard_passdown;
  break;

 case 128:
  if (old_mode != new_mode)
   notify_of_pool_mode_change(pool, "write");
  dm_pool_metadata_read_write(pool->pmd);
  pool->process_bio = process_bio;
  pool->process_discard = process_discard;
  pool->process_prepared_mapping = process_prepared_mapping;
  pool->process_prepared_discard = process_prepared_discard;
  break;
 }

 pool->pf.mode = new_mode;




 pt->adjusted_pf.mode = new_mode;
}
