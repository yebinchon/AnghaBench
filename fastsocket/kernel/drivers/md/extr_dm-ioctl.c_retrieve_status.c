
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target_spec {int next; int target_type; int length; int sector_start; scalar_t__ status; } ;
struct dm_target {TYPE_1__* type; int len; int begin; } ;
struct dm_table {int dummy; } ;
struct dm_ioctl {int flags; int data_start; size_t data_size; unsigned int target_count; } ;
typedef int status_type_t ;
struct TYPE_2__ {scalar_t__ (* status ) (struct dm_target*,int ,char*,size_t) ;scalar_t__ (* status_with_flags ) (struct dm_target*,int ,unsigned int,char*,size_t) ;int name; } ;


 int DM_BUFFER_FULL_FLAG ;
 int DM_NOFLUSH_FLAG ;
 unsigned int DM_STATUS_NOFLUSH_FLAG ;
 int DM_STATUS_TABLE_FLAG ;
 int STATUSTYPE_INFO ;
 int STATUSTYPE_TABLE ;
 char* align_ptr (char*) ;
 unsigned int dm_table_get_num_targets (struct dm_table*) ;
 struct dm_target* dm_table_get_target (struct dm_table*,unsigned int) ;
 scalar_t__ dm_target_provides_status_with_flags (TYPE_1__*) ;
 char* get_result_buffer (struct dm_ioctl*,size_t,size_t*) ;
 int strlen (char*) ;
 int strncpy (int ,int ,int) ;
 scalar_t__ stub1 (struct dm_target*,int ,unsigned int,char*,size_t) ;
 scalar_t__ stub2 (struct dm_target*,int ,char*,size_t) ;

__attribute__((used)) static void retrieve_status(struct dm_table *table,
       struct dm_ioctl *param, size_t param_size)
{
 unsigned int i, num_targets;
 struct dm_target_spec *spec;
 char *outbuf, *outptr;
 status_type_t type;
 size_t remaining, len, used = 0;
 unsigned status_flags = 0;

 outptr = outbuf = get_result_buffer(param, param_size, &len);

 if (param->flags & DM_STATUS_TABLE_FLAG)
  type = STATUSTYPE_TABLE;
 else
  type = STATUSTYPE_INFO;


 num_targets = dm_table_get_num_targets(table);
 for (i = 0; i < num_targets; i++) {
  struct dm_target *ti = dm_table_get_target(table, i);
  size_t l;

  remaining = len - (outptr - outbuf);
  if (remaining <= sizeof(struct dm_target_spec)) {
   param->flags |= DM_BUFFER_FULL_FLAG;
   break;
  }

  spec = (struct dm_target_spec *) outptr;

  spec->status = 0;
  spec->sector_start = ti->begin;
  spec->length = ti->len;
  strncpy(spec->target_type, ti->type->name,
   sizeof(spec->target_type));

  outptr += sizeof(struct dm_target_spec);
  remaining = len - (outptr - outbuf);
  if (remaining <= 0) {
   param->flags |= DM_BUFFER_FULL_FLAG;
   break;
  }


  if (dm_target_provides_status_with_flags(ti->type) &&
      ti->type->status_with_flags) {




   if (param->flags & DM_NOFLUSH_FLAG)
    status_flags |= DM_STATUS_NOFLUSH_FLAG;
   if (ti->type->status_with_flags(ti, type, status_flags,
       outptr, remaining)) {
    param->flags |= DM_BUFFER_FULL_FLAG;
    break;
   }
  } else if (ti->type->status) {
   if (ti->type->status(ti, type, outptr, remaining)) {
    param->flags |= DM_BUFFER_FULL_FLAG;
    break;
   }
  } else
   outptr[0] = '\0';

  l = strlen(outptr) + 1;
  if (l == remaining) {
   param->flags |= DM_BUFFER_FULL_FLAG;
   break;
  }

  outptr += l;
  used = param->data_start + (outptr - outbuf);

  outptr = align_ptr(outptr);
  spec->next = outptr - outbuf;
 }

 if (used)
  param->data_size = used;

 param->target_count = num_targets;
}
