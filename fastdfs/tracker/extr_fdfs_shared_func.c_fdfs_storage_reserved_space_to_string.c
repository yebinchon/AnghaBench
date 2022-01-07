
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double mb; double ratio; } ;
struct TYPE_5__ {scalar_t__ flag; TYPE_1__ rs; } ;
typedef TYPE_2__ FDFSStorageReservedSpace ;


 scalar_t__ TRACKER_STORAGE_RESERVED_SPACE_FLAG_MB ;
 int sprintf (char*,char*,double) ;

const char *fdfs_storage_reserved_space_to_string(FDFSStorageReservedSpace *pStorageReservedSpace, char *buff)

{
 if (pStorageReservedSpace->flag == TRACKER_STORAGE_RESERVED_SPACE_FLAG_MB)

 {
  sprintf(buff, "%d MB", pStorageReservedSpace->rs.mb);
 }
 else
 {
  sprintf(buff, "%.2f%%", 100.00 * pStorageReservedSpace->rs.ratio);

 }

 return buff;
}
