
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tracker_save_groups () ;
 int tracker_save_storages () ;
 int tracker_save_sync_timestamps () ;

int tracker_save_sys_files()
{
 int result;

 if ((result=tracker_save_groups()) != 0)
 {
  return result;
 }

 if ((result=tracker_save_storages()) != 0)
 {
  return result;
 }

 return tracker_save_sync_timestamps();
}
