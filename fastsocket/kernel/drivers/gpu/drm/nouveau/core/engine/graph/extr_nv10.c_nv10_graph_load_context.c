
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv10_graph_priv {int dummy; } ;
struct nv10_graph_chan {int* nv10; int* nv17; } ;
struct TYPE_2__ {int chipset; } ;


 int ARRAY_SIZE (int *) ;
 int NV10_PGRAPH_CTX_CONTROL ;
 int NV10_PGRAPH_CTX_USER ;
 int NV10_PGRAPH_FFINTFC_ST2 ;
 int NV10_PGRAPH_GLOBALSTATE1 ;
 int * nv10_graph_ctx_regs ;
 int nv10_graph_load_dma_vtxbuf (struct nv10_graph_chan*,int,int) ;
 int nv10_graph_load_pipe (struct nv10_graph_chan*) ;
 struct nv10_graph_priv* nv10_graph_priv (struct nv10_graph_chan*) ;
 int * nv17_graph_ctx_regs ;
 TYPE_1__* nv_device (struct nv10_graph_priv*) ;
 int nv_mask (struct nv10_graph_priv*,int ,int,int) ;
 int nv_rd32 (struct nv10_graph_priv*,int ) ;
 int nv_wr32 (struct nv10_graph_priv*,int ,int) ;

__attribute__((used)) static int
nv10_graph_load_context(struct nv10_graph_chan *chan, int chid)
{
 struct nv10_graph_priv *priv = nv10_graph_priv(chan);
 u32 inst;
 int i;

 for (i = 0; i < ARRAY_SIZE(nv10_graph_ctx_regs); i++)
  nv_wr32(priv, nv10_graph_ctx_regs[i], chan->nv10[i]);

 if (nv_device(priv)->chipset >= 0x17) {
  for (i = 0; i < ARRAY_SIZE(nv17_graph_ctx_regs); i++)
   nv_wr32(priv, nv17_graph_ctx_regs[i], chan->nv17[i]);
 }

 nv10_graph_load_pipe(chan);

 inst = nv_rd32(priv, NV10_PGRAPH_GLOBALSTATE1) & 0xffff;
 nv10_graph_load_dma_vtxbuf(chan, chid, inst);

 nv_wr32(priv, NV10_PGRAPH_CTX_CONTROL, 0x10010100);
 nv_mask(priv, NV10_PGRAPH_CTX_USER, 0xff000000, chid << 24);
 nv_mask(priv, NV10_PGRAPH_FFINTFC_ST2, 0x30000000, 0x00000000);
 return 0;
}
