
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int gdb_x86errcode ;
 int gdb_x86vector ;

void kgdb_post_primary_code(struct pt_regs *regs, int e_vector, int err_code)
{

 gdb_x86vector = e_vector;
 gdb_x86errcode = err_code;
}
