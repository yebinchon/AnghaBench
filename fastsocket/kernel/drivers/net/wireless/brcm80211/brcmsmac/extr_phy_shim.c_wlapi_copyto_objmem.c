
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;
struct phy_shim_info {int wlc_hw; } ;


 int brcms_b_copyto_objmem (int ,int ,void const*,int,int ) ;

void
wlapi_copyto_objmem(struct phy_shim_info *physhim, uint offset, const void *buf,
      int l, u32 sel)
{
 brcms_b_copyto_objmem(physhim->wlc_hw, offset, buf, l, sel);
}
