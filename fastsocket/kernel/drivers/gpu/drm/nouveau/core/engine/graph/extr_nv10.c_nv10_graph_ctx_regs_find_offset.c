
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv10_graph_priv {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int* nv10_graph_ctx_regs ;
 int nv_error (struct nv10_graph_priv*,char*,int) ;

__attribute__((used)) static int
nv10_graph_ctx_regs_find_offset(struct nv10_graph_priv *priv, int reg)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(nv10_graph_ctx_regs); i++) {
  if (nv10_graph_ctx_regs[i] == reg)
   return i;
 }
 nv_error(priv, "unknow offset nv10_ctx_regs %d\n", reg);
 return -1;
}
