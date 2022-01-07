
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nvc0_graph_priv {int rop_nr; } ;
struct nouveau_object {int dummy; } ;


 int ROP_UNIT (int,int) ;
 int nouveau_client_name (struct nouveau_object*) ;
 int nv_error (struct nvc0_graph_priv*,char*,int,int,int ,int,...) ;
 int nv_rd32 (struct nvc0_graph_priv*,int) ;
 int nv_wr32 (struct nvc0_graph_priv*,int,int) ;

__attribute__((used)) static void
nve0_graph_trap_isr(struct nvc0_graph_priv *priv, int chid, u64 inst,
  struct nouveau_object *engctx)
{
 u32 trap = nv_rd32(priv, 0x400108);
 int rop;

 if (trap & 0x00000001) {
  u32 stat = nv_rd32(priv, 0x404000);
  nv_error(priv, "DISPATCH ch %d [0x%010llx %s] 0x%08x\n",
    chid, inst, nouveau_client_name(engctx), stat);
  nv_wr32(priv, 0x404000, 0xc0000000);
  nv_wr32(priv, 0x400108, 0x00000001);
  trap &= ~0x00000001;
 }

 if (trap & 0x00000010) {
  u32 stat = nv_rd32(priv, 0x405840);
  nv_error(priv, "SHADER ch %d [0x%010llx %s] 0x%08x\n",
    chid, inst, nouveau_client_name(engctx), stat);
  nv_wr32(priv, 0x405840, 0xc0000000);
  nv_wr32(priv, 0x400108, 0x00000010);
  trap &= ~0x00000010;
 }

 if (trap & 0x02000000) {
  for (rop = 0; rop < priv->rop_nr; rop++) {
   u32 statz = nv_rd32(priv, ROP_UNIT(rop, 0x070));
   u32 statc = nv_rd32(priv, ROP_UNIT(rop, 0x144));
   nv_error(priv,
     "ROP%d ch %d [0x%010llx %s] 0x%08x 0x%08x\n",
     rop, chid, inst, nouveau_client_name(engctx),
     statz, statc);
   nv_wr32(priv, ROP_UNIT(rop, 0x070), 0xc0000000);
   nv_wr32(priv, ROP_UNIT(rop, 0x144), 0xc0000000);
  }
  nv_wr32(priv, 0x400108, 0x02000000);
  trap &= ~0x02000000;
 }

 if (trap) {
  nv_error(priv, "TRAP ch %d [0x%010llx %s] 0x%08x\n",
    chid, inst, nouveau_client_name(engctx), trap);
  nv_wr32(priv, 0x400108, trap);
 }
}
