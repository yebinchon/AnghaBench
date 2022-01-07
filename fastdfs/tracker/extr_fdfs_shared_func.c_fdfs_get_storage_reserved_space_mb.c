
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mb; int const ratio; } ;
struct TYPE_5__ {scalar_t__ flag; TYPE_1__ rs; } ;
typedef TYPE_2__ FDFSStorageReservedSpace ;


 scalar_t__ TRACKER_STORAGE_RESERVED_SPACE_FLAG_MB ;

int fdfs_get_storage_reserved_space_mb(const int total_mb, FDFSStorageReservedSpace *pStorageReservedSpace)

{
 if (pStorageReservedSpace->flag == TRACKER_STORAGE_RESERVED_SPACE_FLAG_MB)

 {
  return pStorageReservedSpace->rs.mb;
 }
 else
 {
  return (int)(total_mb * pStorageReservedSpace->rs.ratio);
 }
}
