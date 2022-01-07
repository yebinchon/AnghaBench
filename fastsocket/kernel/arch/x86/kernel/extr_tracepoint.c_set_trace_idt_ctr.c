
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_set (int *,int) ;
 int trace_idt_ctr ;
 int wmb () ;

__attribute__((used)) static void set_trace_idt_ctr(int val)
{
 atomic_set(&trace_idt_ctr, val);

 wmb();
}
