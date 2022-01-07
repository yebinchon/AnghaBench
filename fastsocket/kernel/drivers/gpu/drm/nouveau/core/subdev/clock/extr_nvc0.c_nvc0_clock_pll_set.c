
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvc0_clock_priv {int dummy; } ;
struct nvbios_pll {int type; int reg; } ;
struct nouveau_clock {int dummy; } ;
struct nouveau_bios {int dummy; } ;


 int EINVAL ;




 struct nouveau_bios* nouveau_bios (struct nvc0_clock_priv*) ;
 int nv_mask (struct nvc0_clock_priv*,int ,int,int) ;
 int nv_warn (struct nvc0_clock_priv*,char*,int ,int ) ;
 int nv_wr32 (struct nvc0_clock_priv*,int ,int) ;
 int nva3_pll_calc (struct nouveau_clock*,struct nvbios_pll*,int ,int*,int*,int*,int*) ;
 int nvbios_pll_parse (struct nouveau_bios*,int ,struct nvbios_pll*) ;

__attribute__((used)) static int
nvc0_clock_pll_set(struct nouveau_clock *clk, u32 type, u32 freq)
{
 struct nvc0_clock_priv *priv = (void *)clk;
 struct nouveau_bios *bios = nouveau_bios(priv);
 struct nvbios_pll info;
 int N, fN, M, P;
 int ret;

 ret = nvbios_pll_parse(bios, type, &info);
 if (ret)
  return ret;

 ret = nva3_pll_calc(clk, &info, freq, &N, &fN, &M, &P);
 if (ret < 0)
  return ret;

 switch (info.type) {
 case 131:
 case 130:
 case 129:
 case 128:
  nv_mask(priv, info.reg + 0x0c, 0x00000000, 0x00000100);
  nv_wr32(priv, info.reg + 0x04, (P << 16) | (N << 8) | M);
  nv_wr32(priv, info.reg + 0x10, fN << 16);
  break;
 default:
  nv_warn(priv, "0x%08x/%dKhz unimplemented\n", type, freq);
  ret = -EINVAL;
  break;
 }

 return ret;
}
