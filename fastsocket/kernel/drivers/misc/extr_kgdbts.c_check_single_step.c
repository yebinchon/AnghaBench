
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUMREGBYTES ;
 int eprintk (char*,unsigned long) ;
 int gdb_regs_to_pt_regs (scalar_t__,int *) ;
 unsigned long instruction_pointer (int *) ;
 int kgdb_hex2mem (char*,char*,int ) ;
 scalar_t__ kgdbts_gdb_regs ;
 int kgdbts_regs ;
 unsigned long lookup_addr (char*) ;
 int v2printk (char*,unsigned long) ;

__attribute__((used)) static int check_single_step(char *put_str, char *arg)
{
 unsigned long addr = lookup_addr(arg);




 kgdb_hex2mem(&put_str[1], (char *)kgdbts_gdb_regs,
   NUMREGBYTES);
 gdb_regs_to_pt_regs(kgdbts_gdb_regs, &kgdbts_regs);
 v2printk("Singlestep stopped at IP: %lx\n",
     instruction_pointer(&kgdbts_regs));
 if (instruction_pointer(&kgdbts_regs) == addr) {
  eprintk("kgdbts: SingleStep failed at %lx\n",
      instruction_pointer(&kgdbts_regs));
  return 1;
 }

 return 0;
}
