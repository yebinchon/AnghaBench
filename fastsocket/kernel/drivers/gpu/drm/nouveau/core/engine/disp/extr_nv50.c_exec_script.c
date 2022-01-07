
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct nvbios_outp {int * script; } ;
struct nvbios_init {int crtc; int execute; struct dcb_output* outp; int offset; struct nouveau_bios* bios; int subdev; } ;
struct nv50_disp_priv {int dummy; } ;
struct nouveau_bios {int dummy; } ;
struct dcb_output {int dummy; } ;
struct TYPE_2__ {int chipset; } ;


 scalar_t__ exec_lookup (struct nv50_disp_priv*,int,int,int,struct dcb_output*,int *,int *,int *,int *,struct nvbios_outp*) ;
 struct nouveau_bios* nouveau_bios (struct nv50_disp_priv*) ;
 TYPE_1__* nv_device (struct nv50_disp_priv*) ;
 int nv_rd32 (struct nv50_disp_priv*,int) ;
 int nv_subdev (struct nv50_disp_priv*) ;
 scalar_t__ nvbios_exec (struct nvbios_init*) ;

__attribute__((used)) static bool
exec_script(struct nv50_disp_priv *priv, int head, int id)
{
 struct nouveau_bios *bios = nouveau_bios(priv);
 struct nvbios_outp info;
 struct dcb_output dcb;
 u8 ver, hdr, cnt, len;
 u16 data;
 u32 ctrl = 0x00000000;
 int i;


 for (i = 0; !(ctrl & (1 << head)) && i < 3; i++)
  ctrl = nv_rd32(priv, 0x610b5c + (i * 8));


 if (!(ctrl & (1 << head))) {
  if (nv_device(priv)->chipset < 0x90 ||
      nv_device(priv)->chipset == 0x92 ||
      nv_device(priv)->chipset == 0xa0) {
   for (i = 0; !(ctrl & (1 << head)) && i < 2; i++)
    ctrl = nv_rd32(priv, 0x610b74 + (i * 8));
   i += 4;
  } else {
   for (i = 0; !(ctrl & (1 << head)) && i < 4; i++)
    ctrl = nv_rd32(priv, 0x610798 + (i * 8));
   i += 4;
  }
 }


 if (!(ctrl & (1 << head))) {
  for (i = 0; !(ctrl & (1 << head)) && i < 3; i++)
   ctrl = nv_rd32(priv, 0x610b84 + (i * 8));
  i += 8;
 }

 if (!(ctrl & (1 << head)))
  return 0;
 i--;

 data = exec_lookup(priv, head, i, ctrl, &dcb, &ver, &hdr, &cnt, &len, &info);
 if (data) {
  struct nvbios_init init = {
   .subdev = nv_subdev(priv),
   .bios = bios,
   .offset = info.script[id],
   .outp = &dcb,
   .crtc = head,
   .execute = 1,
  };

  return nvbios_exec(&init) == 0;
 }

 return 0;
}
