
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** FDFSStorageDetail ;


 int free (int ******) ;

__attribute__((used)) static void tracker_mem_free_storages(FDFSStorageDetail **servers, const int count)
{
 FDFSStorageDetail **ppServer;
 FDFSStorageDetail **ppServerEnd;

 ppServerEnd = servers + count;
 for (ppServer=servers; ppServer<ppServerEnd; ppServer++)
 {
  if (*ppServer != ((void*)0))
  {
   free(*ppServer);
  }
 }

 free(servers);
}
