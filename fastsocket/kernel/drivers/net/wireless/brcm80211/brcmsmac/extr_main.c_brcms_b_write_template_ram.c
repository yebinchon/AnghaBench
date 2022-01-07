
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct brcms_hardware {int unit; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;
typedef int __le32 ;
typedef int __be32 ;


 int D11REGOFFS (int ) ;
 int MCTL_BIGEND ;
 int bcma_read32 (struct bcma_device*,int ) ;
 int bcma_write32 (struct bcma_device*,int ,int) ;
 int brcms_dbg_info (struct bcma_device*,char*,int ) ;
 int cpu_to_be32 (int) ;
 int cpu_to_le32 (int) ;
 int maccontrol ;
 int memcpy (int*,void*,int) ;
 int tplatewrdata ;
 int tplatewrptr ;

void
brcms_b_write_template_ram(struct brcms_hardware *wlc_hw, int offset, int len,
       void *buf)
{
 struct bcma_device *core = wlc_hw->d11core;
 u32 word;
 __le32 word_le;
 __be32 word_be;
 bool be_bit;
 brcms_dbg_info(core, "wl%d\n", wlc_hw->unit);

 bcma_write32(core, D11REGOFFS(tplatewrptr), offset);





 be_bit = (bcma_read32(core, D11REGOFFS(maccontrol)) & MCTL_BIGEND) != 0;

 while (len > 0) {
  memcpy(&word, buf, sizeof(u32));

  if (be_bit) {
   word_be = cpu_to_be32(word);
   word = *(u32 *)&word_be;
  } else {
   word_le = cpu_to_le32(word);
   word = *(u32 *)&word_le;
  }

  bcma_write32(core, D11REGOFFS(tplatewrdata), word);

  buf = (u8 *) buf + sizeof(u32);
  len -= sizeof(u32);
 }
}
