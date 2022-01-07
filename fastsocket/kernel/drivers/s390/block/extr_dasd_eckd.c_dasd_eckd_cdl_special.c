
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
dasd_eckd_cdl_special(int blk_per_trk, int recid)
{
 if (recid < 3)
  return 1;
 if (recid < blk_per_trk)
  return 0;
 if (recid < 2 * blk_per_trk)
  return 1;
 return 0;
}
