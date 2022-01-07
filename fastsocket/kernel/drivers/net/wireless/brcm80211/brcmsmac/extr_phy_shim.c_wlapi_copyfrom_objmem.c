
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;
struct phy_shim_info {int wlc_hw; } ;


 int brcms_b_copyfrom_objmem (int ,int ,void*,int,int ) ;

void
wlapi_copyfrom_objmem(struct phy_shim_info *physhim, uint offset, void *buf,
        int len, u32 sel)
{
 brcms_b_copyfrom_objmem(physhim->wlc_hw, offset, buf, len, sel);
}
