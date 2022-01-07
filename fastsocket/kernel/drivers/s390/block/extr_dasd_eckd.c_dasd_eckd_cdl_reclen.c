
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LABEL_SIZE ;
 int* sizes_trk0 ;

__attribute__((used)) static inline int
dasd_eckd_cdl_reclen(int recid)
{
 if (recid < 3)
  return sizes_trk0[recid];
 return LABEL_SIZE;
}
