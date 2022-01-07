
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long VSYSCALL_END ;
 unsigned long VSYSCALL_START ;

int in_gate_area_no_mm(unsigned long addr)
{
 return (addr >= VSYSCALL_START) && (addr < VSYSCALL_END);
}
