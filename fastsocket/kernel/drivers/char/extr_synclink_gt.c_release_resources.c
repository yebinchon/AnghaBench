
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int irq_requested; int reg_addr_requested; int * reg_addr; int phys_reg_addr; int irq_level; } ;


 int SLGT_REG_SIZE ;
 int free_irq (int ,struct slgt_info*) ;
 int iounmap (int *) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void release_resources(struct slgt_info *info)
{
 if (info->irq_requested) {
  free_irq(info->irq_level, info);
  info->irq_requested = 0;
 }

 if (info->reg_addr_requested) {
  release_mem_region(info->phys_reg_addr, SLGT_REG_SIZE);
  info->reg_addr_requested = 0;
 }

 if (info->reg_addr) {
  iounmap(info->reg_addr);
  info->reg_addr = ((void*)0);
 }
}
