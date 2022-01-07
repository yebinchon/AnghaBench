
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nve0_ibus_priv {int dummy; } ;


 int nv_error (struct nve0_ibus_priv*,char*,int,int ,int ,int ) ;
 int nv_mask (struct nve0_ibus_priv*,int,int,int) ;
 int nv_rd32 (struct nve0_ibus_priv*,int) ;

__attribute__((used)) static void
nve0_ibus_intr_gpc(struct nve0_ibus_priv *priv, int i)
{
 u32 addr = nv_rd32(priv, 0x128120 + (i * 0x0800));
 u32 data = nv_rd32(priv, 0x128124 + (i * 0x0800));
 u32 stat = nv_rd32(priv, 0x128128 + (i * 0x0800));
 nv_error(priv, "GPC%d: 0x%06x 0x%08x (0x%08x)\n", i, addr, data, stat);
 nv_mask(priv, 0x128128 + (i * 0x0800), 0x00000200, 0x00000000);
}
