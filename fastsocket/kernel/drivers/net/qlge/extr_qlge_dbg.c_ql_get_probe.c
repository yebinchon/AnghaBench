
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int dummy; } ;


 int PRB_MX_ADDR ;
 int PRB_MX_ADDR_ARE ;
 int PRB_MX_ADDR_MAX_MODS ;
 int PRB_MX_ADDR_MAX_MUX ;
 int PRB_MX_ADDR_MOD_SEL_SHIFT ;
 int PRB_MX_ADDR_UP ;
 int PRB_MX_DATA ;
 int ql_read32 (struct ql_adapter*,int ) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;

__attribute__((used)) static unsigned int *ql_get_probe(struct ql_adapter *qdev, u32 clock,
     u32 valid, u32 *buf)
{
 u32 module, mux_sel, probe, lo_val, hi_val;

 for (module = 0; module < PRB_MX_ADDR_MAX_MODS; module++) {
  if (!((valid >> module) & 1))
   continue;
  for (mux_sel = 0; mux_sel < PRB_MX_ADDR_MAX_MUX; mux_sel++) {
   probe = clock
    | PRB_MX_ADDR_ARE
    | mux_sel
    | (module << PRB_MX_ADDR_MOD_SEL_SHIFT);
   ql_write32(qdev, PRB_MX_ADDR, probe);
   lo_val = ql_read32(qdev, PRB_MX_DATA);
   if (mux_sel == 0) {
    *buf = probe;
    buf++;
   }
   probe |= PRB_MX_ADDR_UP;
   ql_write32(qdev, PRB_MX_ADDR, probe);
   hi_val = ql_read32(qdev, PRB_MX_DATA);
   *buf = lo_val;
   buf++;
   *buf = hi_val;
   buf++;
  }
 }
 return buf;
}
