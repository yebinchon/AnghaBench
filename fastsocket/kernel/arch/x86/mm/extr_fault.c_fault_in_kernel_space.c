
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long TASK_SIZE_MAX ;

__attribute__((used)) static int fault_in_kernel_space(unsigned long address)
{
 return address >= TASK_SIZE_MAX;
}
