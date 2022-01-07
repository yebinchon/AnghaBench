
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct brcms_hardware {int dummy; } ;


 int brcms_b_write_objmem (struct brcms_hardware*,int,int,int ) ;

void
brcms_b_copyto_objmem(struct brcms_hardware *wlc_hw, uint offset,
        const void *buf, int len, u32 sel)
{
 u16 v;
 const u8 *p = (const u8 *)buf;
 int i;

 if (len <= 0 || (offset & 1) || (len & 1))
  return;

 for (i = 0; i < len; i += 2) {
  v = p[i] | (p[i + 1] << 8);
  brcms_b_write_objmem(wlc_hw, offset + i, v, sel);
 }
}
