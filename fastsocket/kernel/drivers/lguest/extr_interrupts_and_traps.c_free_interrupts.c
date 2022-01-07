
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SYSCALL_VECTOR ;
 int clear_bit (scalar_t__,int ) ;
 scalar_t__ syscall_vector ;
 int used_vectors ;

void free_interrupts(void)
{
 if (syscall_vector != SYSCALL_VECTOR)
  clear_bit(syscall_vector, used_vectors);
}
