
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * equiv_cpu_table ;
 int vfree (int *) ;

__attribute__((used)) static void free_equiv_cpu_table(void)
{
 vfree(equiv_cpu_table);
 equiv_cpu_table = ((void*)0);
}
