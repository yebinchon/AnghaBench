
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fast_task_info {int length; scalar_t__ data; scalar_t__ arg; } ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {int pkg_len; int cmd; scalar_t__ status; } ;
typedef TYPE_1__ TrackerHeader ;
struct TYPE_5__ {int open_flags; scalar_t__ fd; int crc32; scalar_t__ calc_crc32; int done_callback; int op; int dio_thread_index; scalar_t__ end; scalar_t__ start; scalar_t__ offset; } ;
struct TYPE_6__ {scalar_t__ total_offset; scalar_t__ total_length; int clean_func; int deal_func; TYPE_2__ file_context; } ;
typedef TYPE_2__ StorageFileContext ;
typedef TYPE_3__ StorageClientInfo ;
typedef int FileDealDoneCallback ;


 int CRC32_XINIT ;
 int FDFS_STORAGE_FILE_OP_READ ;
 int O_RDONLY ;
 int STORAGE_PROTO_CMD_RESP ;
 int STORAGE_STATUE_DEAL_FILE ;
 int close (scalar_t__) ;
 int dio_read_file ;
 int dio_read_finish_clean_up ;
 int g_extra_open_file_flags ;
 int long2buff (scalar_t__ const,int ) ;
 int storage_dio_get_thread_index (struct fast_task_info*,int const,int ) ;
 int storage_dio_queue_push (struct fast_task_info*) ;

__attribute__((used)) static int storage_read_from_file(struct fast_task_info *pTask, const int64_t file_offset, const int64_t download_bytes, FileDealDoneCallback done_callback, const int store_path_index)



{
 StorageClientInfo *pClientInfo;
 StorageFileContext *pFileContext;
 TrackerHeader *pHeader;
 int result;

 pClientInfo = (StorageClientInfo *)pTask->arg;
 pFileContext = &(pClientInfo->file_context);

 pClientInfo->deal_func = dio_read_file;
 pClientInfo->clean_func = dio_read_finish_clean_up;
 pClientInfo->total_length = sizeof(TrackerHeader) + download_bytes;
 pClientInfo->total_offset = 0;

 pFileContext->op = FDFS_STORAGE_FILE_OP_READ;
 pFileContext->open_flags = O_RDONLY | g_extra_open_file_flags;
 pFileContext->offset = file_offset;
 pFileContext->start = file_offset;
 pFileContext->end = file_offset + download_bytes;
 pFileContext->dio_thread_index = storage_dio_get_thread_index( pTask, store_path_index, pFileContext->op);

 pFileContext->done_callback = done_callback;

 pTask->length = sizeof(TrackerHeader);

 pHeader = (TrackerHeader *)pTask->data;
 pHeader->status = 0;
 pHeader->cmd = STORAGE_PROTO_CMD_RESP;
 long2buff(download_bytes, pHeader->pkg_len);

 if (pFileContext->calc_crc32)
 {
  pFileContext->crc32 = CRC32_XINIT;
 }
 if ((result=storage_dio_queue_push(pTask)) != 0)
 {
  if (pFileContext->fd >= 0)
  {
   close(pFileContext->fd);
  }
  return result;
 }

 return STORAGE_STATUE_DEAL_FILE;
}
