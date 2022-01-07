
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_disp_priv {int dummy; } ;


 int exec_script (struct nv50_disp_priv*,int,int) ;

__attribute__((used)) static void
nvd0_disp_intr_unk1_0(struct nv50_disp_priv *priv, int head)
{
 exec_script(priv, head, 1);
}
