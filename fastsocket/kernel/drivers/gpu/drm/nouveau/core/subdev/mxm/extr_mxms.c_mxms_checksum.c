
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct nouveau_mxm {int dummy; } ;


 scalar_t__* mxms_data (struct nouveau_mxm*) ;
 scalar_t__ mxms_headerlen (struct nouveau_mxm*) ;
 scalar_t__ mxms_structlen (struct nouveau_mxm*) ;
 int nv_debug (struct nouveau_mxm*,char*) ;

bool
mxms_checksum(struct nouveau_mxm *mxm)
{
 u16 size = mxms_headerlen(mxm) + mxms_structlen(mxm);
 u8 *mxms = mxms_data(mxm), sum = 0;
 while (size--)
  sum += *mxms++;
 if (sum) {
  nv_debug(mxm, "checksum invalid\n");
  return 0;
 }
 return 1;
}
