
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint ;
typedef int u32 ;
typedef int u16 ;
struct d11init {scalar_t__ addr; scalar_t__ size; int value; } ;
struct brcms_hardware {int unit; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;


 int bcma_write16 (struct bcma_device*,void*,int ) ;
 int bcma_write32 (struct bcma_device*,void*,int ) ;
 int brcms_dbg_info (struct bcma_device*,char*,int ) ;
 scalar_t__ cpu_to_le16 (int) ;
 void* le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void brcms_c_write_inits(struct brcms_hardware *wlc_hw,
    const struct d11init *inits)
{
 struct bcma_device *core = wlc_hw->d11core;
 int i;
 uint offset;
 u16 size;
 u32 value;

 brcms_dbg_info(wlc_hw->d11core, "wl%d\n", wlc_hw->unit);

 for (i = 0; inits[i].addr != cpu_to_le16(0xffff); i++) {
  size = le16_to_cpu(inits[i].size);
  offset = le16_to_cpu(inits[i].addr);
  value = le32_to_cpu(inits[i].value);
  if (size == 2)
   bcma_write16(core, offset, value);
  else if (size == 4)
   bcma_write32(core, offset, value);
  else
   break;
 }
}
