
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvbios_init {int bios; } ;
struct nouveau_clock {int (* pll_set ) (struct nouveau_clock*,int ,int ) ;} ;


 scalar_t__ init_exec (struct nvbios_init*) ;
 struct nouveau_clock* nouveau_clock (int ) ;
 int stub1 (struct nouveau_clock*,int ,int ) ;
 int warn (char*,int ,int ) ;

__attribute__((used)) static void
init_prog_pll(struct nvbios_init *init, u32 id, u32 freq)
{
 struct nouveau_clock *clk = nouveau_clock(init->bios);
 if (clk && clk->pll_set && init_exec(init)) {
  int ret = clk->pll_set(clk, id, freq);
  if (ret)
   warn("failed to prog pll 0x%08x to %dkHz\n", id, freq);
 }
}
