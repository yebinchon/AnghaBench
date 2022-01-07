
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct brcms_hardware {int SRL; int LRL; int d11core; scalar_t__ up; } ;


 int D11REGOFFS (int ) ;
 int OBJADDR_SCR_SEL ;
 int S_DOT11_LRC_LMT ;
 int S_DOT11_SRC_LMT ;
 int bcma_read32 (int ,int ) ;
 int bcma_write32 (int ,int ,int) ;
 int objaddr ;
 int objdata ;

__attribute__((used)) static void brcms_b_retrylimit_upd(struct brcms_hardware *wlc_hw,
       u16 SRL, u16 LRL)
{
 wlc_hw->SRL = SRL;
 wlc_hw->LRL = LRL;


 if (wlc_hw->up) {
  bcma_write32(wlc_hw->d11core, D11REGOFFS(objaddr),
        OBJADDR_SCR_SEL | S_DOT11_SRC_LMT);
  (void)bcma_read32(wlc_hw->d11core, D11REGOFFS(objaddr));
  bcma_write32(wlc_hw->d11core, D11REGOFFS(objdata), wlc_hw->SRL);
  bcma_write32(wlc_hw->d11core, D11REGOFFS(objaddr),
        OBJADDR_SCR_SEL | S_DOT11_LRC_LMT);
  (void)bcma_read32(wlc_hw->d11core, D11REGOFFS(objaddr));
  bcma_write32(wlc_hw->d11core, D11REGOFFS(objdata), wlc_hw->LRL);
 }
}
