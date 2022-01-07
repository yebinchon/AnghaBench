
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ FDFSStorageIdInfo ;


 int ENOENT ;
 TYPE_1__* fdfs_get_storage_id_by_ip (char const*,char const*) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static int tracker_mem_get_storage_id(const char *group_name, const char *pIpAddr, char *storage_id)

{
 FDFSStorageIdInfo *pStorageIdInfo;
 pStorageIdInfo = fdfs_get_storage_id_by_ip(group_name, pIpAddr);
 if (pStorageIdInfo == ((void*)0))
 {
  return ENOENT;
 }

 strcpy(storage_id, pStorageIdInfo->id);
 return 0;
}
