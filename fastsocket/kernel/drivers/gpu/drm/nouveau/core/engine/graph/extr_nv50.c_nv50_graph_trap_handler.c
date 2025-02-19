
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct nv50_graph_priv {int dummy; } ;
struct nouveau_object {int dummy; } ;


 int nouveau_bitfield_print (int ,int) ;
 int nouveau_client_name (struct nouveau_object*) ;
 int nv50_graph_trap_ccache ;
 int nv50_graph_trap_m2mf ;
 int nv50_graph_trap_strmout ;
 int nv50_graph_trap_vfetch ;
 int nv50_priv_tp_trap (struct nv50_graph_priv*,int,int,int,int,char*) ;
 int nv_error (struct nv50_graph_priv*,char*,...) ;
 int nv_rd32 (struct nv50_graph_priv*,int) ;
 int nv_wr32 (struct nv50_graph_priv*,int,int) ;
 int pr_cont (char*) ;

__attribute__((used)) static int
nv50_graph_trap_handler(struct nv50_graph_priv *priv, u32 display,
   int chid, u64 inst, struct nouveau_object *engctx)
{
 u32 status = nv_rd32(priv, 0x400108);
 u32 ustatus;

 if (!status && display) {
  nv_error(priv, "TRAP: no units reporting traps?\n");
  return 1;
 }




 if (status & 0x001) {
  ustatus = nv_rd32(priv, 0x400804) & 0x7fffffff;
  if (!ustatus && display) {
   nv_error(priv, "TRAP_DISPATCH - no ustatus?\n");
  }

  nv_wr32(priv, 0x400500, 0x00000000);


  if (ustatus & 0x00000001) {
   u32 addr = nv_rd32(priv, 0x400808);
   u32 subc = (addr & 0x00070000) >> 16;
   u32 mthd = (addr & 0x00001ffc);
   u32 datal = nv_rd32(priv, 0x40080c);
   u32 datah = nv_rd32(priv, 0x400810);
   u32 class = nv_rd32(priv, 0x400814);
   u32 r848 = nv_rd32(priv, 0x400848);

   nv_error(priv, "TRAP DISPATCH_FAULT\n");
   if (display && (addr & 0x80000000)) {
    nv_error(priv,
      "ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x%08x 400808 0x%08x 400848 0x%08x\n",
      chid, inst,
      nouveau_client_name(engctx), subc,
      class, mthd, datah, datal, addr, r848);
   } else
   if (display) {
    nv_error(priv, "no stuck command?\n");
   }

   nv_wr32(priv, 0x400808, 0);
   nv_wr32(priv, 0x4008e8, nv_rd32(priv, 0x4008e8) & 3);
   nv_wr32(priv, 0x400848, 0);
   ustatus &= ~0x00000001;
  }

  if (ustatus & 0x00000002) {
   u32 addr = nv_rd32(priv, 0x40084c);
   u32 subc = (addr & 0x00070000) >> 16;
   u32 mthd = (addr & 0x00001ffc);
   u32 data = nv_rd32(priv, 0x40085c);
   u32 class = nv_rd32(priv, 0x400814);

   nv_error(priv, "TRAP DISPATCH_QUERY\n");
   if (display && (addr & 0x80000000)) {
    nv_error(priv,
      "ch %d [0x%010llx %s] subc %d class 0x%04x mthd 0x%04x data 0x%08x 40084c 0x%08x\n",
      chid, inst,
      nouveau_client_name(engctx), subc,
      class, mthd, data, addr);
   } else
   if (display) {
    nv_error(priv, "no stuck command?\n");
   }

   nv_wr32(priv, 0x40084c, 0);
   ustatus &= ~0x00000002;
  }

  if (ustatus && display) {
   nv_error(priv, "TRAP_DISPATCH (unknown "
          "0x%08x)\n", ustatus);
  }

  nv_wr32(priv, 0x400804, 0xc0000000);
  nv_wr32(priv, 0x400108, 0x001);
  status &= ~0x001;
  if (!status)
   return 0;
 }


 if (status & 0x002) {
  u32 ustatus = nv_rd32(priv, 0x406800) & 0x7fffffff;
  if (display) {
   nv_error(priv, "TRAP_M2MF");
   nouveau_bitfield_print(nv50_graph_trap_m2mf, ustatus);
   pr_cont("\n");
   nv_error(priv, "TRAP_M2MF %08x %08x %08x %08x\n",
    nv_rd32(priv, 0x406804), nv_rd32(priv, 0x406808),
    nv_rd32(priv, 0x40680c), nv_rd32(priv, 0x406810));

  }


  nv_wr32(priv, 0x400040, 2);
  nv_wr32(priv, 0x400040, 0);
  nv_wr32(priv, 0x406800, 0xc0000000);
  nv_wr32(priv, 0x400108, 0x002);
  status &= ~0x002;
 }


 if (status & 0x004) {
  u32 ustatus = nv_rd32(priv, 0x400c04) & 0x7fffffff;
  if (display) {
   nv_error(priv, "TRAP_VFETCH");
   nouveau_bitfield_print(nv50_graph_trap_vfetch, ustatus);
   pr_cont("\n");
   nv_error(priv, "TRAP_VFETCH %08x %08x %08x %08x\n",
    nv_rd32(priv, 0x400c00), nv_rd32(priv, 0x400c08),
    nv_rd32(priv, 0x400c0c), nv_rd32(priv, 0x400c10));
  }

  nv_wr32(priv, 0x400c04, 0xc0000000);
  nv_wr32(priv, 0x400108, 0x004);
  status &= ~0x004;
 }


 if (status & 0x008) {
  ustatus = nv_rd32(priv, 0x401800) & 0x7fffffff;
  if (display) {
   nv_error(priv, "TRAP_STRMOUT");
   nouveau_bitfield_print(nv50_graph_trap_strmout, ustatus);
   pr_cont("\n");
   nv_error(priv, "TRAP_STRMOUT %08x %08x %08x %08x\n",
    nv_rd32(priv, 0x401804), nv_rd32(priv, 0x401808),
    nv_rd32(priv, 0x40180c), nv_rd32(priv, 0x401810));

  }


  nv_wr32(priv, 0x400040, 0x80);
  nv_wr32(priv, 0x400040, 0);
  nv_wr32(priv, 0x401800, 0xc0000000);
  nv_wr32(priv, 0x400108, 0x008);
  status &= ~0x008;
 }


 if (status & 0x010) {
  ustatus = nv_rd32(priv, 0x405018) & 0x7fffffff;
  if (display) {
   nv_error(priv, "TRAP_CCACHE");
   nouveau_bitfield_print(nv50_graph_trap_ccache, ustatus);
   pr_cont("\n");
   nv_error(priv, "TRAP_CCACHE %08x %08x %08x %08x"
         " %08x %08x %08x\n",
    nv_rd32(priv, 0x405000), nv_rd32(priv, 0x405004),
    nv_rd32(priv, 0x405008), nv_rd32(priv, 0x40500c),
    nv_rd32(priv, 0x405010), nv_rd32(priv, 0x405014),
    nv_rd32(priv, 0x40501c));

  }

  nv_wr32(priv, 0x405018, 0xc0000000);
  nv_wr32(priv, 0x400108, 0x010);
  status &= ~0x010;
 }




 if (status & 0x20) {
  ustatus = nv_rd32(priv, 0x402000) & 0x7fffffff;
  if (display)
   nv_error(priv, "TRAP_UNKC04 0x%08x\n", ustatus);
  nv_wr32(priv, 0x402000, 0xc0000000);

 }


 if (status & 0x040) {
  nv50_priv_tp_trap(priv, 6, 0x408900, 0x408600, display,
        "TRAP_TEXTURE");
  nv_wr32(priv, 0x400108, 0x040);
  status &= ~0x040;
 }


 if (status & 0x080) {
  nv50_priv_tp_trap(priv, 7, 0x408314, 0x40831c, display,
        "TRAP_MP");
  nv_wr32(priv, 0x400108, 0x080);
  status &= ~0x080;
 }



 if (status & 0x100) {
  nv50_priv_tp_trap(priv, 8, 0x408e08, 0x408708, display,
        "TRAP_TPDMA");
  nv_wr32(priv, 0x400108, 0x100);
  status &= ~0x100;
 }

 if (status) {
  if (display)
   nv_error(priv, "TRAP: unknown 0x%08x\n", status);
  nv_wr32(priv, 0x400108, status);
 }

 return 1;
}
