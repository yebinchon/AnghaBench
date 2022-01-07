
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kgdb_brkpt_hook ;
 int kgdb_compiled_brkpt_hook ;
 int unregister_undef_hook (int *) ;

void kgdb_arch_exit(void)
{
 unregister_undef_hook(&kgdb_brkpt_hook);
 unregister_undef_hook(&kgdb_compiled_brkpt_hook);
}
