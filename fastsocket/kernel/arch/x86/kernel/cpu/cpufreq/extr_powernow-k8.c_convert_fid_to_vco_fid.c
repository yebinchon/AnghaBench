
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HI_FID_TABLE_BOTTOM ;

__attribute__((used)) static u32 convert_fid_to_vco_fid(u32 fid)
{
 if (fid < HI_FID_TABLE_BOTTOM)
  return 8 + (2 * fid);
 else
  return fid;
}
