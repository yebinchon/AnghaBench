
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long ip; } ;


 int NUMREGBYTES ;
 int eprintk (char*,int,unsigned long) ;
 int gdb_regs_to_pt_regs (scalar_t__,TYPE_1__*) ;
 int instruction_pointer (TYPE_1__*) ;
 int kgdb_hex2mem (char*,char*,int ) ;
 scalar_t__ kgdbts_gdb_regs ;
 TYPE_1__ kgdbts_regs ;
 unsigned long lookup_addr (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int v2printk (char*,int) ;

__attribute__((used)) static int check_and_rewind_pc(char *put_str, char *arg)
{
 unsigned long addr = lookup_addr(arg);
 int offset = 0;

 kgdb_hex2mem(&put_str[1], (char *)kgdbts_gdb_regs,
   NUMREGBYTES);
 gdb_regs_to_pt_regs(kgdbts_gdb_regs, &kgdbts_regs);
 v2printk("Stopped at IP: %lx\n", instruction_pointer(&kgdbts_regs));





 if (strcmp(arg, "silent") &&
  instruction_pointer(&kgdbts_regs) + offset != addr) {
  eprintk("kgdbts: BP mismatch %lx expected %lx\n",
      instruction_pointer(&kgdbts_regs) + offset, addr);
  return 1;
 }




 return 0;
}
