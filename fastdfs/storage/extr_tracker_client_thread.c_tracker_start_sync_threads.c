
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
typedef TYPE_1__ FDFSStorageBrief ;


 scalar_t__ g_if_trunker_self ;
 int g_my_server_id_str ;
 int storage_sync_thread_start (TYPE_1__ const*) ;
 scalar_t__ strcmp (int ,int ) ;
 int trunk_sync_thread_start (TYPE_1__ const*) ;

__attribute__((used)) static int tracker_start_sync_threads(const FDFSStorageBrief *pStorage)
{
 int result;

 if (strcmp(pStorage->id, g_my_server_id_str) == 0)
 {
  return 0;
 }

 result = storage_sync_thread_start(pStorage);
 if (result == 0)
 {
  if (g_if_trunker_self)
  {
   result = trunk_sync_thread_start(pStorage);
  }
 }

 return result;
}
