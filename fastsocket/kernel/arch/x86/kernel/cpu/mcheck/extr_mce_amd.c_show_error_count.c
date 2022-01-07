
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threshold_block_cross_cpu {int retval; struct threshold_block* tb; } ;
struct threshold_block {int cpu; } ;
typedef int ssize_t ;


 int local_error_count_handler ;
 int smp_call_function_single (int ,int ,struct threshold_block_cross_cpu*,int) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t show_error_count(struct threshold_block *b, char *buf)
{
 struct threshold_block_cross_cpu tbcc = { .tb = b, };

 smp_call_function_single(b->cpu, local_error_count_handler, &tbcc, 1);
 return sprintf(buf, "%lx\n", tbcc.retval);
}
