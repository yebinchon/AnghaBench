
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_exception_store_type {int dummy; } ;


 int DMERR (char*,char const*) ;
 int DMWARN (char*,char const*) ;
 int GFP_KERNEL ;
 struct dm_exception_store_type* _get_exception_store_type (char const*) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 scalar_t__ request_module (char*,char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static struct dm_exception_store_type *get_type(const char *type_name)
{
 char *p, *type_name_dup;
 struct dm_exception_store_type *type;

 type = _get_exception_store_type(type_name);
 if (type)
  return type;

 type_name_dup = kstrdup(type_name, GFP_KERNEL);
 if (!type_name_dup) {
  DMERR("No memory left to attempt load for \"%s\"", type_name);
  return ((void*)0);
 }

 while (request_module("dm-exstore-%s", type_name_dup) ||
        !(type = _get_exception_store_type(type_name))) {
  p = strrchr(type_name_dup, '-');
  if (!p)
   break;
  p[0] = '\0';
 }

 if (!type)
  DMWARN("Module for exstore type \"%s\" not found.", type_name);

 kfree(type_name_dup);

 return type;
}
