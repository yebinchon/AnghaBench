
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ FDFSStorageDetail ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void tracker_mem_insert_into_sorted_servers( FDFSStorageDetail *pTargetServer, FDFSStorageDetail **sorted_servers, const int count)


{
 FDFSStorageDetail **ppServer;
 FDFSStorageDetail **ppEnd;

 ppEnd = sorted_servers + count;
 for (ppServer=ppEnd; ppServer>sorted_servers; ppServer--)
 {
  if (strcmp(pTargetServer->id, (*(ppServer-1))->id) > 0)
  {
   break;
  }
  else
  {
   *ppServer = *(ppServer-1);
  }
 }

 *ppServer = pTargetServer;
}
