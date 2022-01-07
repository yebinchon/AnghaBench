
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int storage_unlink_mark_file (char const*) ;
 scalar_t__ trunk_unlink_mark_file (char const*) ;

__attribute__((used)) static int tracker_unlink_mark_files(const char *storage_id)
{
 int result;

 result = storage_unlink_mark_file(storage_id);
 result += trunk_unlink_mark_file(storage_id);

 return result;
}
