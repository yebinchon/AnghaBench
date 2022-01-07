
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvbios_pll {int type; scalar_t__ reg; } ;
struct nva3_clock_priv {int dummy; } ;
struct nouveau_clock {int dummy; } ;
struct nouveau_bios {int dummy; } ;


 int EINVAL ;


 struct nouveau_bios* nouveau_bios (struct nva3_clock_priv*) ;
 int nv_mask (struct nva3_clock_priv*,int ,int,int) ;
 int nv_warn (struct nva3_clock_priv*,char*,int ,int ) ;
 int nv_wr32 (struct nva3_clock_priv*,scalar_t__,int) ;
 int nva3_pll_calc (struct nouveau_clock*,struct nvbios_pll*,int ,int*,int*,int*,int*) ;
 int nvbios_pll_parse (struct nouveau_bios*,int ,struct nvbios_pll*) ;

__attribute__((used)) static int
nva3_clock_pll_set(struct nouveau_clock *clk, u32 type, u32 freq)
{
 struct nva3_clock_priv *priv = (void *)clk;
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
 case 129:
 case 128:
  nv_wr32(priv, info.reg + 0, 0x50000610);
  nv_mask(priv, info.reg + 4, 0x003fffff,
         (P << 16) | (M << 8) | N);
  nv_wr32(priv, info.reg + 8, fN);
  break;
 default:
  nv_warn(priv, "0x%08x/%dKhz unimplemented\n", type, freq);
  ret = -EINVAL;
  break;
 }

 return ret;
}
