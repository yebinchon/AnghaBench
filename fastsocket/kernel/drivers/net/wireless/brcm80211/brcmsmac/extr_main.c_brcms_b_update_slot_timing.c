
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_hardware {struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;


 int APHY_SLOT_TIME ;
 int BPHY_SLOT_TIME ;
 int D11REGOFFS (int ) ;
 int M_DOT11_SLOT ;
 int bcma_write16 (struct bcma_device*,int ,int) ;
 int brcms_b_write_shm (struct brcms_hardware*,int ,int ) ;
 int ifs_slot ;

__attribute__((used)) static void brcms_b_update_slot_timing(struct brcms_hardware *wlc_hw,
     bool shortslot)
{
 struct bcma_device *core = wlc_hw->d11core;

 if (shortslot) {

  bcma_write16(core, D11REGOFFS(ifs_slot), 0x0207);
  brcms_b_write_shm(wlc_hw, M_DOT11_SLOT, APHY_SLOT_TIME);
 } else {

  bcma_write16(core, D11REGOFFS(ifs_slot), 0x0212);
  brcms_b_write_shm(wlc_hw, M_DOT11_SLOT, BPHY_SLOT_TIME);
 }
}
