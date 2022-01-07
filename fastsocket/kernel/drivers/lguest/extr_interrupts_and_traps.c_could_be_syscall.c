
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SYSCALL_VECTOR ;
 unsigned int syscall_vector ;

__attribute__((used)) static bool could_be_syscall(unsigned int num)
{

 return num == SYSCALL_VECTOR || num == syscall_vector;
}
