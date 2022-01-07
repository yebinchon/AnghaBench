
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct brcms_hardware {int dummy; } ;


 int brcms_b_read_objmem (struct brcms_hardware*,int,int ) ;

void
brcms_b_copyfrom_objmem(struct brcms_hardware *wlc_hw, uint offset, void *buf,
    int len, u32 sel)
{
 u16 v;
 u8 *p = (u8 *) buf;
 int i;

 if (len <= 0 || (offset & 1) || (len & 1))
  return;

 for (i = 0; i < len; i += 2) {
  v = brcms_b_read_objmem(wlc_hw, offset + i, sel);
  p[i] = v & 0xFF;
  p[i + 1] = (v >> 8) & 0xFF;
 }
}
