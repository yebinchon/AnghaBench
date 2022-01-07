
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvc0_grctx {int* buffer; TYPE_1__* mmio; struct nvc0_graph_priv* priv; } ;
struct nvc0_graph_priv {int dummy; } ;
struct TYPE_2__ {int addr; int data; int shift; int buffer; } ;


 int nv_wr32 (struct nvc0_graph_priv*,int,int) ;

void
nvc0_grctx_mmio(struct nvc0_grctx *info, u32 addr, u32 data, u32 shift, u32 buf)
{
 struct nvc0_graph_priv *priv = info->priv;

 info->mmio->addr = addr;
 info->mmio->data = data;
 info->mmio->shift = shift;
 info->mmio->buffer = buf;
 info->mmio++;

 if (shift)
  data |= info->buffer[buf] >> shift;
 nv_wr32(priv, addr, data);
}
