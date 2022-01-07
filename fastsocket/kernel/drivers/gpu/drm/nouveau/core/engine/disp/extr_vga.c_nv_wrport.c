
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_device {scalar_t__ card_type; } ;


 scalar_t__ NV_40 ;
 scalar_t__ NV_50 ;
 struct nouveau_device* nv_device (void*) ;
 int nv_error (void*,char*,int) ;
 int nv_wr08 (void*,int,int ) ;

void
nv_wrport(void *obj, int head, u16 port, u8 data)
{
 struct nouveau_device *device = nv_device(obj);

 if (device->card_type >= NV_50)
  nv_wr08(obj, 0x601000 + port, data);
 else
 if (port == 0x03c0 || port == 0x03c1 ||
     port == 0x03c2 || port == 0x03da ||
     port == 0x03d4 || port == 0x03d5)
  nv_wr08(obj, 0x601000 + (head * 0x2000) + port, data);
 else
 if (port == 0x03c2 || port == 0x03cc ||
     port == 0x03c4 || port == 0x03c5 ||
     port == 0x03ce || port == 0x03cf) {
  if (device->card_type < NV_40)
   head = 0;
  nv_wr08(obj, 0x0c0000 + (head * 0x2000) + port, data);
 } else
  nv_error(obj, "unknown vga port 0x%04x\n", port);
}
