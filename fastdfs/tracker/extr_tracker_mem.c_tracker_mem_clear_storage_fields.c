
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int store_path_count; int stat; scalar_t__ current_write_path; scalar_t__ upload_priority; scalar_t__ subdir_count_per_path; scalar_t__ changelog_offset; scalar_t__ free_mb; scalar_t__ total_mb; scalar_t__ sync_until_timestamp; int * psync_src_server; int * path_free_mbs; int * path_total_mbs; } ;
typedef int FDFSStorageStat ;
typedef TYPE_1__ FDFSStorageDetail ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void tracker_mem_clear_storage_fields(FDFSStorageDetail *pStorageServer)
{
        if (pStorageServer->path_total_mbs != ((void*)0))
 {
  memset(pStorageServer->path_total_mbs, 0, sizeof(int64_t) * pStorageServer->store_path_count);

 }

        if (pStorageServer->path_free_mbs != ((void*)0))
 {
  memset(pStorageServer->path_free_mbs, 0, sizeof(int64_t) * pStorageServer->store_path_count);

 }

 pStorageServer->psync_src_server = ((void*)0);
 pStorageServer->sync_until_timestamp = 0;
 pStorageServer->total_mb = 0;
 pStorageServer->free_mb = 0;
 pStorageServer->changelog_offset = 0;
 pStorageServer->store_path_count = 0;
 pStorageServer->subdir_count_per_path = 0;
 pStorageServer->upload_priority = 0;
 pStorageServer->current_write_path = 0;

 memset(&(pStorageServer->stat), 0, sizeof(FDFSStorageStat));
}
