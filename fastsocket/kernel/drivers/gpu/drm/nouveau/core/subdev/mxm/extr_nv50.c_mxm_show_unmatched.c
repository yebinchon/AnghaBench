
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct nouveau_mxm {int dummy; } ;


 int nv_info (struct nouveau_mxm*,char*,int) ;

__attribute__((used)) static bool
mxm_show_unmatched(struct nouveau_mxm *mxm, u8 *data, void *info)
{
 u64 desc = *(u64 *)data;
 if ((desc & 0xf0) != 0xf0)
 nv_info(mxm, "unmatched output device 0x%016llx\n", desc);
 return 1;
}
