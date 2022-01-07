
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_ctrl_block {scalar_t__ entries; int* insn; int byte; } ;


 int pr_warning (char*) ;

__attribute__((used)) static unsigned long unwind_get_byte(struct unwind_ctrl_block *ctrl)
{
 unsigned long ret;

 if (ctrl->entries <= 0) {
  pr_warning("unwind: Corrupt unwind table\n");
  return 0;
 }

 ret = (*ctrl->insn >> (ctrl->byte * 8)) & 0xff;

 if (ctrl->byte == 0) {
  ctrl->insn++;
  ctrl->entries--;
  ctrl->byte = 3;
 } else
  ctrl->byte--;

 return ret;
}
