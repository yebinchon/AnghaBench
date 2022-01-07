
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef int u32 ;
struct brcms_hardware {int unit; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;
typedef int __le32 ;


 int D11REGOFFS (int ) ;
 int OBJADDR_AUTO_INC ;
 int OBJADDR_UCM_SEL ;
 int bcma_read32 (struct bcma_device*,int ) ;
 int bcma_write32 (struct bcma_device*,int ,int) ;
 int brcms_dbg_info (struct bcma_device*,char*,int ) ;
 int le32_to_cpu (int const) ;
 int objaddr ;
 int objdata ;

__attribute__((used)) static void brcms_ucode_write(struct brcms_hardware *wlc_hw,
         const __le32 ucode[], const size_t nbytes)
{
 struct bcma_device *core = wlc_hw->d11core;
 uint i;
 uint count;

 brcms_dbg_info(wlc_hw->d11core, "wl%d\n", wlc_hw->unit);

 count = (nbytes / sizeof(u32));

 bcma_write32(core, D11REGOFFS(objaddr),
       OBJADDR_AUTO_INC | OBJADDR_UCM_SEL);
 (void)bcma_read32(core, D11REGOFFS(objaddr));
 for (i = 0; i < count; i++)
  bcma_write32(core, D11REGOFFS(objdata), le32_to_cpu(ucode[i]));

}
