
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nouveau_mxm {int dummy; } ;


 int mxms_checksum (struct nouveau_mxm*) ;
 int * mxms_data (struct nouveau_mxm*) ;
 int mxms_version (struct nouveau_mxm*) ;
 int nv_debug (struct nouveau_mxm*,char*) ;

bool
mxms_valid(struct nouveau_mxm *mxm)
{
 u8 *mxms = mxms_data(mxm);
 if (*(u32 *)mxms != 0x5f4d584d) {
  nv_debug(mxm, "signature invalid\n");
  return 0;
 }

 if (!mxms_version(mxm) || !mxms_checksum(mxm))
  return 0;

 return 1;
}
