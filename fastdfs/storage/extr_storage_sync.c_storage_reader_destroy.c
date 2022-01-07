
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; int * current; int * buffer; } ;
struct TYPE_5__ {int mark_fd; int binlog_fd; TYPE_1__ binlog_buff; } ;
typedef TYPE_2__ StorageBinLogReader ;


 int close (int) ;
 int free (int *) ;

void storage_reader_destroy(StorageBinLogReader *pReader)
{
 if (pReader->mark_fd >= 0)
 {
  close(pReader->mark_fd);
  pReader->mark_fd = -1;
 }

 if (pReader->binlog_fd >= 0)
 {
  close(pReader->binlog_fd);
  pReader->binlog_fd = -1;
 }

 if (pReader->binlog_buff.buffer != ((void*)0))
 {
  free(pReader->binlog_buff.buffer);
  pReader->binlog_buff.buffer = ((void*)0);
  pReader->binlog_buff.current = ((void*)0);
  pReader->binlog_buff.length = 0;
 }
}
