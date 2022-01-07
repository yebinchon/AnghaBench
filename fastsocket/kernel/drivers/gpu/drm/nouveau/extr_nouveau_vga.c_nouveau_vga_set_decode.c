
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_device {int chipset; } ;


 unsigned int VGA_RSRC_LEGACY_IO ;
 unsigned int VGA_RSRC_LEGACY_MEM ;
 unsigned int VGA_RSRC_NORMAL_IO ;
 unsigned int VGA_RSRC_NORMAL_MEM ;
 struct nouveau_device* nouveau_dev (void*) ;
 int nv_wr32 (struct nouveau_device*,int,int) ;

__attribute__((used)) static unsigned int
nouveau_vga_set_decode(void *priv, bool state)
{
 struct nouveau_device *device = nouveau_dev(priv);

 if (device->chipset >= 0x40)
  nv_wr32(device, 0x088054, state);
 else
  nv_wr32(device, 0x001854, state);

 if (state)
  return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
         VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
 else
  return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
}
