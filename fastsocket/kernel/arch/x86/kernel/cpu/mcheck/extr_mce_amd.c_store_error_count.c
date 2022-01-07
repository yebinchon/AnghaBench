
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threshold_block {int cpu; } ;
struct thresh_restart {int reset; int old_limit; struct threshold_block* b; } ;
typedef int ssize_t ;


 int smp_call_function_single (int ,int ,struct thresh_restart*,int) ;
 int threshold_restart_bank ;

__attribute__((used)) static ssize_t store_error_count(struct threshold_block *b,
     const char *buf, size_t count)
{
 struct thresh_restart tr = { .b = b, .reset = 1, .old_limit = 0 };

 smp_call_function_single(b->cpu, threshold_restart_bank, &tr, 1);
 return 1;
}
