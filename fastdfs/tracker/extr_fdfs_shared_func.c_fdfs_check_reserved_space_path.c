
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {double ratio; } ;
struct TYPE_5__ {scalar_t__ flag; TYPE_1__ rs; } ;
typedef TYPE_2__ FDFSStorageReservedSpace ;


 scalar_t__ TRACKER_STORAGE_RESERVED_SPACE_FLAG_MB ;

bool fdfs_check_reserved_space_path(const int64_t total_mb, const int64_t free_mb, const int avg_mb, FDFSStorageReservedSpace *pStorageReservedSpace)


{
 if (pStorageReservedSpace->flag == TRACKER_STORAGE_RESERVED_SPACE_FLAG_MB)

 {
  return free_mb > avg_mb;
 }
 else
 {
  if (total_mb == 0)
  {
   return 0;
  }
  return ((double)free_mb / (double)total_mb) > pStorageReservedSpace->rs.ratio;

 }
}
