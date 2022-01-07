
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dump_data_reg; int dump_addr_reg; } ;
struct ipr_ioa_cfg {TYPE_1__ regs; } ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int ipr_get_sis64_dump_data_section(struct ipr_ioa_cfg *ioa_cfg,
        u32 start_addr,
        __be32 *dest, u32 length_in_words)
{
 int i;

 for (i = 0; i < length_in_words; i++) {
  writel(start_addr+(i*4), ioa_cfg->regs.dump_addr_reg);
  *dest = cpu_to_be32(readl(ioa_cfg->regs.dump_data_reg));
  dest++;
 }

 return 0;
}
