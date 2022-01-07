
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {scalar_t__ start; } ;


 int PSW_BASE_BITS ;
 int PSW_DEFAULT_KEY ;
 int __load_psw_mask (int) ;
 int setup_regs () ;

__attribute__((used)) static void __do_machine_kdump(void *image)
{







}
