
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ free_mb; scalar_t__ total_mb; } ;
struct TYPE_6__ {scalar_t__ mb; double ratio; } ;
struct TYPE_7__ {scalar_t__ flag; TYPE_1__ rs; } ;
typedef TYPE_2__ FDFSStorageReservedSpace ;
typedef TYPE_3__ FDFSGroupInfo ;


 scalar_t__ TRACKER_STORAGE_RESERVED_SPACE_FLAG_MB ;

bool fdfs_check_reserved_space(FDFSGroupInfo *pGroup, FDFSStorageReservedSpace *pStorageReservedSpace)

{
 if (pStorageReservedSpace->flag == TRACKER_STORAGE_RESERVED_SPACE_FLAG_MB)

 {
  return pGroup->free_mb > pStorageReservedSpace->rs.mb;
 }
 else
 {
  if (pGroup->total_mb == 0)
  {
   return 0;
  }







  return ((double)pGroup->free_mb / (double)pGroup->total_mb) > pStorageReservedSpace->rs.ratio;

 }
}
