
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int server; } ;
typedef TYPE_1__ FDFSStorageServer ;


 int g_storage_count ;
 TYPE_1__* g_storage_servers ;
 int trunk_sync_thread_start (int *) ;

int trunk_sync_thread_start_all()
{
 FDFSStorageServer *pServer;
 FDFSStorageServer *pEnd;
 int result;
 int ret;

 result = 0;
 pEnd = g_storage_servers + g_storage_count;
 for (pServer=g_storage_servers; pServer<pEnd; pServer++)
 {
  ret = trunk_sync_thread_start(&(pServer->server));
  if (ret != 0)
  {
   result = ret;
  }
 }

 return result;
}
