
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** paths; } ;
typedef int StorageBinLogReader ;


 TYPE_1__ g_fdfs_store_paths ;
 int recovery_reader_init (char*,int *) ;
 int storage_do_split_trunk_binlog (int const,int *) ;
 int storage_reader_destroy (int *) ;

__attribute__((used)) static int storage_disk_recovery_split_trunk_binlog(const int store_path_index)
{
 char *pBasePath;
 StorageBinLogReader reader;
 int result;

 pBasePath = g_fdfs_store_paths.paths[store_path_index];
 if ((result=recovery_reader_init(pBasePath, &reader)) != 0)
 {
  storage_reader_destroy(&reader);
  return result;
 }

 result = storage_do_split_trunk_binlog(store_path_index, &reader);

 storage_reader_destroy(&reader);
 return result;
}
