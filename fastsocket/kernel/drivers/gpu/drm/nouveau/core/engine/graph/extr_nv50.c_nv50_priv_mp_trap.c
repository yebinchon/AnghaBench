
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv50_graph_priv {int dummy; } ;
struct TYPE_2__ {int chipset; } ;


 int nouveau_enum_print (int ,int) ;
 int nv50_mp_exec_error_names ;
 TYPE_1__* nv_device (struct nv50_graph_priv*) ;
 int nv_error (struct nv50_graph_priv*,char*,int,...) ;
 int nv_rd32 (struct nv50_graph_priv*,int) ;
 int nv_wr32 (struct nv50_graph_priv*,int,int) ;
 int pr_cont (char*,int,int,int,int) ;

__attribute__((used)) static void
nv50_priv_mp_trap(struct nv50_graph_priv *priv, int tpid, int display)
{
 u32 units = nv_rd32(priv, 0x1540);
 u32 addr, mp10, status, pc, oplow, ophigh;
 int i;
 int mps = 0;
 for (i = 0; i < 4; i++) {
  if (!(units & 1 << (i+24)))
   continue;
  if (nv_device(priv)->chipset < 0xa0)
   addr = 0x408200 + (tpid << 12) + (i << 7);
  else
   addr = 0x408100 + (tpid << 11) + (i << 7);
  mp10 = nv_rd32(priv, addr + 0x10);
  status = nv_rd32(priv, addr + 0x14);
  if (!status)
   continue;
  if (display) {
   nv_rd32(priv, addr + 0x20);
   pc = nv_rd32(priv, addr + 0x24);
   oplow = nv_rd32(priv, addr + 0x70);
   ophigh = nv_rd32(priv, addr + 0x74);
   nv_error(priv, "TRAP_MP_EXEC - "
     "TP %d MP %d: ", tpid, i);
   nouveau_enum_print(nv50_mp_exec_error_names, status);
   pr_cont(" at %06x warp %d, opcode %08x %08x\n",
     pc&0xffffff, pc >> 24,
     oplow, ophigh);
  }
  nv_wr32(priv, addr + 0x10, mp10);
  nv_wr32(priv, addr + 0x14, 0);
  mps++;
 }
 if (!mps && display)
  nv_error(priv, "TRAP_MP_EXEC - TP %d: "
    "No MPs claiming errors?\n", tpid);
}
