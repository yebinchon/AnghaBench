
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fast_task_info {scalar_t__ arg; } ;
struct TYPE_2__ {int * extra_arg; } ;
typedef TYPE_1__ StorageClientInfo ;
typedef int StorageBinLogReader ;


 int MAX_PATH_SIZE ;
 scalar_t__ fileExists (char*) ;
 int free (int *) ;
 int get_mark_filename_by_reader (int *,char*) ;
 int storage_reader_destroy (int *) ;
 int storage_reader_remove_from_list (int *) ;
 int unlink (char*) ;

__attribute__((used)) static void fetch_one_path_binlog_finish_clean_up(struct fast_task_info *pTask)
{
 StorageClientInfo *pClientInfo;
 StorageBinLogReader *pReader;
 char full_filename[MAX_PATH_SIZE];

 pClientInfo = (StorageClientInfo *)pTask->arg;
 pReader = (StorageBinLogReader *)pClientInfo->extra_arg;
 if (pReader == ((void*)0))
 {
  return;
 }

 pClientInfo->extra_arg = ((void*)0);

    storage_reader_remove_from_list(pReader);
 storage_reader_destroy(pReader);
 get_mark_filename_by_reader(pReader, full_filename);
 if (fileExists(full_filename))
 {
  unlink(full_filename);
 }

 free(pReader);
}
