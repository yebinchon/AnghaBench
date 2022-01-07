
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_dirty_log_type {int dummy; } ;


 int DMWARN (char*,char const*) ;
 int GFP_KERNEL ;
 struct dm_dirty_log_type* _get_dirty_log_type (char const*) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 scalar_t__ request_module (char*,char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static struct dm_dirty_log_type *get_type(const char *type_name)
{
 char *p, *type_name_dup;
 struct dm_dirty_log_type *log_type;

 if (!type_name)
  return ((void*)0);

 log_type = _get_dirty_log_type(type_name);
 if (log_type)
  return log_type;

 type_name_dup = kstrdup(type_name, GFP_KERNEL);
 if (!type_name_dup) {
  DMWARN("No memory left to attempt log module load for \"%s\"",
         type_name);
  return ((void*)0);
 }

 while (request_module("dm-log-%s", type_name_dup) ||
        !(log_type = _get_dirty_log_type(type_name))) {
  p = strrchr(type_name_dup, '-');
  if (!p)
   break;
  p[0] = '\0';
 }

 if (!log_type)
  DMWARN("Module for logging type \"%s\" not found.", type_name);

 kfree(type_name_dup);

 return log_type;
}
