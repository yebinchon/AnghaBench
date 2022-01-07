
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sh_dmae_chan {int id; } ;


 scalar_t__ SH_DMAC_CHAN_BASE (int ) ;
 scalar_t__ ctrl_inl (scalar_t__) ;

__attribute__((used)) static u32 sh_dmae_readl(struct sh_dmae_chan *sh_dc, u32 reg)
{
 return ctrl_inl((SH_DMAC_CHAN_BASE(sh_dc->id) + reg));
}
