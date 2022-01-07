
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv10_graph_priv {int dummy; } ;
struct nv10_graph_chan {void** nv17; void** nv10; } ;
struct TYPE_2__ {int chipset; } ;


 int ARRAY_SIZE (int *) ;
 int NV10_PGRAPH_CTX_CONTROL ;
 int NV10_PGRAPH_CTX_USER ;
 int * nv10_graph_ctx_regs ;
 struct nv10_graph_priv* nv10_graph_priv (struct nv10_graph_chan*) ;
 int nv10_graph_save_pipe (struct nv10_graph_chan*) ;
 int * nv17_graph_ctx_regs ;
 TYPE_1__* nv_device (struct nv10_graph_priv*) ;
 int nv_mask (struct nv10_graph_priv*,int ,int,int) ;
 void* nv_rd32 (struct nv10_graph_priv*,int ) ;
 int nv_wr32 (struct nv10_graph_priv*,int ,int) ;

__attribute__((used)) static int
nv10_graph_unload_context(struct nv10_graph_chan *chan)
{
 struct nv10_graph_priv *priv = nv10_graph_priv(chan);
 int i;

 for (i = 0; i < ARRAY_SIZE(nv10_graph_ctx_regs); i++)
  chan->nv10[i] = nv_rd32(priv, nv10_graph_ctx_regs[i]);

 if (nv_device(priv)->chipset >= 0x17) {
  for (i = 0; i < ARRAY_SIZE(nv17_graph_ctx_regs); i++)
   chan->nv17[i] = nv_rd32(priv, nv17_graph_ctx_regs[i]);
 }

 nv10_graph_save_pipe(chan);

 nv_wr32(priv, NV10_PGRAPH_CTX_CONTROL, 0x10000000);
 nv_mask(priv, NV10_PGRAPH_CTX_USER, 0xff000000, 0x1f000000);
 return 0;
}
