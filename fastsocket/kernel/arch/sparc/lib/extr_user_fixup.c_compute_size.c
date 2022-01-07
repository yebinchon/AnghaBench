
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long fault_address; } ;


 TYPE_1__* current_thread_info () ;

__attribute__((used)) static unsigned long compute_size(unsigned long start, unsigned long size, unsigned long *offset)
{
 unsigned long fault_addr = current_thread_info()->fault_address;
 unsigned long end = start + size;

 if (fault_addr < start || fault_addr >= end) {
  *offset = 0;
 } else {
  *offset = fault_addr - start;
  size = end - fault_addr;
 }
 return size;
}
