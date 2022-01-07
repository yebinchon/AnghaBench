
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct brcms_hardware {int unit; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;


 int D11REGOFFS (int ) ;
 int RCM_INC_DATA ;
 int bcma_write16 (struct bcma_device*,int ,int) ;
 int brcms_dbg_rx (struct bcma_device*,char*,int ) ;
 int rcm_ctl ;
 int rcm_mat_data ;

__attribute__((used)) static void
brcms_b_set_addrmatch(struct brcms_hardware *wlc_hw, int match_reg_offset,
         const u8 *addr)
{
 struct bcma_device *core = wlc_hw->d11core;
 u16 mac_l;
 u16 mac_m;
 u16 mac_h;

 brcms_dbg_rx(core, "wl%d: brcms_b_set_addrmatch\n", wlc_hw->unit);

 mac_l = addr[0] | (addr[1] << 8);
 mac_m = addr[2] | (addr[3] << 8);
 mac_h = addr[4] | (addr[5] << 8);


 bcma_write16(core, D11REGOFFS(rcm_ctl),
       RCM_INC_DATA | match_reg_offset);
 bcma_write16(core, D11REGOFFS(rcm_mat_data), mac_l);
 bcma_write16(core, D11REGOFFS(rcm_mat_data), mac_m);
 bcma_write16(core, D11REGOFFS(rcm_mat_data), mac_h);
}
