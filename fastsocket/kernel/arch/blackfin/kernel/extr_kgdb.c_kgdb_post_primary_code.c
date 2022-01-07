
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int gdb_bfin_errcode ;
 int gdb_bfin_vector ;

void kgdb_post_primary_code(struct pt_regs *regs, int eVector, int err_code)
{

 gdb_bfin_vector = eVector;
 gdb_bfin_errcode = err_code;
}
