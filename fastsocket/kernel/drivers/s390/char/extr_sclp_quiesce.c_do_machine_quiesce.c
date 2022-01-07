
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mask; int addr; } ;
typedef TYPE_1__ psw_t ;


 int PSW_BASE_BITS ;
 int PSW_MASK_WAIT ;
 int __load_psw (TYPE_1__) ;
 int smp_send_stop () ;

__attribute__((used)) static void do_machine_quiesce(void)
{
 psw_t quiesce_psw;

 smp_send_stop();
 quiesce_psw.mask = PSW_BASE_BITS | PSW_MASK_WAIT;
 quiesce_psw.addr = 0xfff;
 __load_psw(quiesce_psw);
}
