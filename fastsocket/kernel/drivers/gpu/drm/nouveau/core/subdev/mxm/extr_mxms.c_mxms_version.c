
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_mxm {int dummy; } ;


 int* mxms_data (struct nouveau_mxm*) ;
 int nv_debug (struct nouveau_mxm*,char*,int,int) ;

u16
mxms_version(struct nouveau_mxm *mxm)
{
 u8 *mxms = mxms_data(mxm);
 u16 version = (mxms[4] << 8) | mxms[5];
 switch (version ) {
 case 0x0200:
 case 0x0201:
 case 0x0300:
  return version;
 default:
  break;
 }

 nv_debug(mxm, "unknown version %d.%d\n", mxms[4], mxms[5]);
 return 0x0000;
}
