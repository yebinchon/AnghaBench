
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fast_task_info {int length; scalar_t__ data; scalar_t__ arg; } ;
struct TYPE_4__ {int status; int pkg_len; int cmd; } ;
typedef TYPE_1__ TrackerHeader ;
struct TYPE_5__ {int crc32; } ;
struct TYPE_6__ {int total_length; scalar_t__ total_offset; scalar_t__ extra_arg; TYPE_2__ file_context; } ;
typedef int StorageFileInfoForCRC32 ;
typedef TYPE_2__ StorageFileContext ;
typedef TYPE_3__ StorageClientInfo ;


 int ACCESS_LOG_ACTION_QUERY_FILE ;
 int STORAGE_ACCESS_LOG (struct fast_task_info*,int ,int) ;
 int STORAGE_PROTO_CMD_RESP ;
 int fast_mblock_free_object (int *,int *) ;
 int finfo_for_crc32_allocator ;
 int long2buff (int,int ) ;
 int query_file_info_response (struct fast_task_info*,int *,int ) ;
 int storage_nio_notify (struct fast_task_info*) ;

__attribute__((used)) static void calc_crc32_done_callback_for_query_finfo(
        struct fast_task_info *pTask, const int err_no)
{
 StorageClientInfo *pClientInfo;
    StorageFileInfoForCRC32 *crc32_file_info;
 StorageFileContext *pFileContext;
 TrackerHeader *pHeader;
 int result;

 pClientInfo = (StorageClientInfo *)pTask->arg;
 pFileContext = &(pClientInfo->file_context);
    crc32_file_info = (StorageFileInfoForCRC32 *)pClientInfo->extra_arg;

 if (err_no == 0)
 {
        result = query_file_info_response(pTask, crc32_file_info,
                pFileContext->crc32);
 }
 else
 {
  result = err_no;
        pClientInfo->total_length = sizeof(TrackerHeader);
 }

    fast_mblock_free_object(&finfo_for_crc32_allocator, crc32_file_info);

 pClientInfo->total_offset = 0;
 pTask->length = pClientInfo->total_length;

 pHeader = (TrackerHeader *)pTask->data;
 pHeader->status = result;
 pHeader->cmd = STORAGE_PROTO_CMD_RESP;
 long2buff(pTask->length - sizeof(TrackerHeader), pHeader->pkg_len);

    STORAGE_ACCESS_LOG(pTask, ACCESS_LOG_ACTION_QUERY_FILE, result);
 storage_nio_notify(pTask);
}
