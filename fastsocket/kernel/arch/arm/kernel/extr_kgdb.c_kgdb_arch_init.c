
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kgdb_brkpt_hook ;
 int kgdb_compiled_brkpt_hook ;
 int register_undef_hook (int *) ;

int kgdb_arch_init(void)
{
 register_undef_hook(&kgdb_brkpt_hook);
 register_undef_hook(&kgdb_compiled_brkpt_hook);

 return 0;
}
