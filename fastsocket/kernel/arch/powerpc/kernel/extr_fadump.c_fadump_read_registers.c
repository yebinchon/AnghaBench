
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct fadump_reg_entry {scalar_t__ reg_id; int reg_value; } ;


 scalar_t__ REG_ID (char*) ;
 int fadump_set_regval (struct pt_regs*,scalar_t__,int ) ;
 int memset (struct pt_regs*,int ,int) ;

__attribute__((used)) static struct fadump_reg_entry*
fadump_read_registers(struct fadump_reg_entry *reg_entry, struct pt_regs *regs)
{
 memset(regs, 0, sizeof(struct pt_regs));

 while (reg_entry->reg_id != REG_ID("CPUEND")) {
  fadump_set_regval(regs, reg_entry->reg_id,
     reg_entry->reg_value);
  reg_entry++;
 }
 reg_entry++;
 return reg_entry;
}
