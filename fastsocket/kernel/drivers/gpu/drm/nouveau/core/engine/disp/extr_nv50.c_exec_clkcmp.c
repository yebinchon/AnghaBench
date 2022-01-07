
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvbios_outp {int dummy; } ;
struct nvbios_ocfg {int * clkcmp; } ;
struct nvbios_init {int offset; int crtc; int execute; struct dcb_output* outp; struct nouveau_bios* bios; int subdev; } ;
struct TYPE_3__ {int lvdsconf; } ;
struct nv50_disp_priv {TYPE_1__ sor; } ;
struct nouveau_bios {int dummy; } ;
struct dcb_output {scalar_t__ location; int type; } ;
struct TYPE_4__ {int chipset; } ;






 int exec_lookup (struct nv50_disp_priv*,int,int,int,struct dcb_output*,int *,int *,int *,int *,struct nvbios_outp*) ;
 struct nouveau_bios* nouveau_bios (struct nv50_disp_priv*) ;
 TYPE_2__* nv_device (struct nv50_disp_priv*) ;
 int nv_rd32 (struct nv50_disp_priv*,int) ;
 int nv_subdev (struct nv50_disp_priv*) ;
 int nvbios_exec (struct nvbios_init*) ;
 int nvbios_ocfg_match (struct nouveau_bios*,int,int,int *,int *,int *,int *,struct nvbios_ocfg*) ;
 int nvbios_oclk_match (struct nouveau_bios*,int ,int) ;

__attribute__((used)) static u32
exec_clkcmp(struct nv50_disp_priv *priv, int head, int id, u32 pclk,
     struct dcb_output *outp)
{
 struct nouveau_bios *bios = nouveau_bios(priv);
 struct nvbios_outp info1;
 struct nvbios_ocfg info2;
 u8 ver, hdr, cnt, len;
 u32 ctrl = 0x00000000;
 u32 data, conf = ~0;
 int i;


 for (i = 0; !(ctrl & (1 << head)) && i < 3; i++)
  ctrl = nv_rd32(priv, 0x610b58 + (i * 8));


 if (!(ctrl & (1 << head))) {
  if (nv_device(priv)->chipset < 0x90 ||
      nv_device(priv)->chipset == 0x92 ||
      nv_device(priv)->chipset == 0xa0) {
   for (i = 0; !(ctrl & (1 << head)) && i < 2; i++)
    ctrl = nv_rd32(priv, 0x610b70 + (i * 8));
   i += 4;
  } else {
   for (i = 0; !(ctrl & (1 << head)) && i < 4; i++)
    ctrl = nv_rd32(priv, 0x610794 + (i * 8));
   i += 4;
  }
 }


 if (!(ctrl & (1 << head))) {
  for (i = 0; !(ctrl & (1 << head)) && i < 3; i++)
   ctrl = nv_rd32(priv, 0x610b80 + (i * 8));
  i += 8;
 }

 if (!(ctrl & (1 << head)))
  return conf;
 i--;

 data = exec_lookup(priv, head, i, ctrl, outp, &ver, &hdr, &cnt, &len, &info1);
 if (!data)
  return conf;

 if (outp->location == 0) {
  switch (outp->type) {
  case 128:
   conf = (ctrl & 0x00000f00) >> 8;
   if (pclk >= 165000)
    conf |= 0x0100;
   break;
  case 129:
   conf = priv->sor.lvdsconf;
   break;
  case 130:
   conf = (ctrl & 0x00000f00) >> 8;
   break;
  case 131:
  default:
   conf = 0x00ff;
   break;
  }
 } else {
  conf = (ctrl & 0x00000f00) >> 8;
  pclk = pclk / 2;
 }

 data = nvbios_ocfg_match(bios, data, conf, &ver, &hdr, &cnt, &len, &info2);
 if (data && id < 0xff) {
  data = nvbios_oclk_match(bios, info2.clkcmp[id], pclk);
  if (data) {
   struct nvbios_init init = {
    .subdev = nv_subdev(priv),
    .bios = bios,
    .offset = data,
    .outp = outp,
    .crtc = head,
    .execute = 1,
   };

   nvbios_exec(&init);
  }
 }

 return conf;
}
