
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char** paths; } ;
struct TYPE_5__ {TYPE_1__* ips; } ;
struct TYPE_4__ {int address; } ;
typedef int ConnectionInfo ;


 int EINTR ;
 int ENOENT ;
 int FDFS_STORAGE_STATUS_RECOVERY ;
 int MAX_PATH_SIZE ;
 scalar_t__ g_continue_flag ;
 TYPE_3__ g_fdfs_store_paths ;
 int g_my_server_id_str ;
 TYPE_2__ g_tracker_client_ip ;
 int recovery_get_mark_filename (char*,char*) ;
 int recovery_get_src_storage_server (int *) ;
 int recovery_init_binlog_file (char*) ;
 int recovery_init_mark_file (char*,int) ;
 int storage_disk_recovery_finish (char*) ;
 int storage_disk_recovery_split_trunk_binlog (int const) ;
 int storage_do_fetch_binlog (int *,int const) ;
 scalar_t__ storage_report_storage_status (int ,int ,int ) ;
 int tracker_close_connection_ex (int *,int) ;
 int * tracker_make_connection (int *,int*) ;
 int unlink (int ) ;

int storage_disk_recovery_start(const int store_path_index)
{
 ConnectionInfo srcStorage;
 ConnectionInfo *pStorageConn;
 int result;
 char *pBasePath;

 pBasePath = g_fdfs_store_paths.paths[store_path_index];
 if ((result=recovery_init_mark_file(pBasePath, 0)) != 0)
 {
  return result;
 }

 if ((result=recovery_init_binlog_file(pBasePath)) != 0)
 {
  return result;
 }

 if ((result=recovery_get_src_storage_server(&srcStorage)) != 0)
 {
  if (result == ENOENT)
  {
   return storage_disk_recovery_finish(pBasePath);
  }
  else
  {
   return result;
  }
 }

 while (g_continue_flag)
 {
  if (storage_report_storage_status(g_my_server_id_str, g_tracker_client_ip.ips[0].address,

            FDFS_STORAGE_STATUS_RECOVERY) == 0)
  {
   break;
  }
 }

 if (!g_continue_flag)
 {
  return EINTR;
 }

 if ((pStorageConn=tracker_make_connection(&srcStorage, &result)) == ((void*)0))
 {
  return result;
 }

 result = storage_do_fetch_binlog(pStorageConn, store_path_index);
 tracker_close_connection_ex(pStorageConn, 1);
 if (result != 0)
 {
  return result;
 }


 if ((result=recovery_init_mark_file(pBasePath, 1)) != 0)
 {
  return result;
 }

 if ((result=storage_disk_recovery_split_trunk_binlog( store_path_index)) != 0)

 {
  char markFullFilename[MAX_PATH_SIZE];
  unlink(recovery_get_mark_filename(pBasePath, markFullFilename));
  return result;
 }

 return 0;
}
