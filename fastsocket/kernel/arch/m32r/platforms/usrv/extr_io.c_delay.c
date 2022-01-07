
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void delay(void)
{
 __asm__ __volatile__ ("push r0; \n\t pop r0;" : : :"memory");
}
