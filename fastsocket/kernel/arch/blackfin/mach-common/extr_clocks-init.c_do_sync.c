
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __builtin_bfin_ssync () ;

__attribute__((used)) __attribute__((l1_text))
static void do_sync(void)
{
 __builtin_bfin_ssync();
}
