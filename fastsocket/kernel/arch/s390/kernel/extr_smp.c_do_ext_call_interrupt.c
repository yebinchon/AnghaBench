
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int smp_handle_ext_call () ;

__attribute__((used)) static void do_ext_call_interrupt(__u16 code)
{
 smp_handle_ext_call();
}
