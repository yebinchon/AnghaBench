
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int dummy; } ;
struct dm_dirty_log_type {scalar_t__ (* ctr ) (struct dm_dirty_log*,struct dm_target*,unsigned int,char**) ;} ;
struct dm_dirty_log {int (* flush_callback_fn ) (struct dm_target*) ;struct dm_dirty_log_type* type; } ;


 int GFP_KERNEL ;
 struct dm_dirty_log_type* get_type (char const*) ;
 int kfree (struct dm_dirty_log*) ;
 struct dm_dirty_log* kmalloc (int,int ) ;
 int put_type (struct dm_dirty_log_type*) ;
 scalar_t__ stub1 (struct dm_dirty_log*,struct dm_target*,unsigned int,char**) ;

struct dm_dirty_log *dm_dirty_log_create(const char *type_name,
   struct dm_target *ti,
   int (*flush_callback_fn)(struct dm_target *ti),
   unsigned int argc, char **argv)
{
 struct dm_dirty_log_type *type;
 struct dm_dirty_log *log;

 log = kmalloc(sizeof(*log), GFP_KERNEL);
 if (!log)
  return ((void*)0);

 type = get_type(type_name);
 if (!type) {
  kfree(log);
  return ((void*)0);
 }

 log->flush_callback_fn = flush_callback_fn;
 log->type = type;
 if (type->ctr(log, ti, argc, argv)) {
  kfree(log);
  put_type(type);
  return ((void*)0);
 }

 return log;
}
