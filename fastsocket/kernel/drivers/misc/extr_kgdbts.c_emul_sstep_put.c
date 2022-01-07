
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int idx; } ;


 scalar_t__ BREAK_INSTR_SIZE ;
 int NUMREGBYTES ;
 int arch_needs_sstep_emulation ;
 int eprintk (char*) ;
 int gdb_regs_to_pt_regs (scalar_t__,int *) ;
 scalar_t__ instruction_pointer (int *) ;
 int kgdb_hex2mem (char*,char*,int ) ;
 scalar_t__ kgdbts_gdb_regs ;
 int kgdbts_regs ;
 scalar_t__ sstep_addr ;
 int sstep_state ;
 scalar_t__ strncmp (char*,char*,int) ;
 TYPE_1__ ts ;
 int v2printk (char*,scalar_t__) ;

__attribute__((used)) static int emul_sstep_put(char *put_str, char *arg)
{
 if (!arch_needs_sstep_emulation) {
  if (!strncmp(put_str+1, arg, 2))
   return 0;
  return 1;
 }
 switch (sstep_state) {
 case 1:

  kgdb_hex2mem(&put_str[1], (char *)kgdbts_gdb_regs,
    NUMREGBYTES);
  gdb_regs_to_pt_regs(kgdbts_gdb_regs, &kgdbts_regs);
  v2printk("Stopped at IP: %lx\n",
    instruction_pointer(&kgdbts_regs));

  sstep_addr = instruction_pointer(&kgdbts_regs) +
   BREAK_INSTR_SIZE;
  break;
 case 2:
  if (strncmp(put_str, "$OK", 3)) {
   eprintk("kgdbts: failed sstep break set\n");
   return 1;
  }
  break;
 case 3:
  if (strncmp(put_str, "$T0", 3)) {
   eprintk("kgdbts: failed continue sstep\n");
   return 1;
  }
  break;
 case 4:
  if (strncmp(put_str, "$OK", 3)) {
   eprintk("kgdbts: failed sstep break unset\n");
   return 1;
  }

  sstep_state = 0;
  return 0;
 default:
  eprintk("kgdbts: ERROR failed sstep put emulation\n");
 }


 ts.idx--;
 return 0;
}
