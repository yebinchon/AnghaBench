
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv50_disp_priv {int dummy; } ;
struct dcb_output {int dummy; } ;


 int exec_clkcmp (struct nv50_disp_priv*,int,int,int,struct dcb_output*) ;
 int nv_rd32 (struct nv50_disp_priv*,int) ;

__attribute__((used)) static void
nvd0_disp_intr_unk4_0(struct nv50_disp_priv *priv, int head)
{
 struct dcb_output outp;
 u32 pclk = nv_rd32(priv, 0x660450 + (head * 0x300)) / 1000;
 exec_clkcmp(priv, head, 1, pclk, &outp);
}
