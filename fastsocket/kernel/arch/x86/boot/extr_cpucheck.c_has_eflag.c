
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int has_eflag(u32 mask)
{
 u32 f0, f1;

 asm("pushfl ; "
     "pushfl ; "
     "popl %0 ; "
     "movl %0,%1 ; "
     "xorl %2,%1 ; "
     "pushl %1 ; "
     "popfl ; "
     "pushfl ; "
     "popl %1 ; "
     "popfl"
     : "=&r" (f0), "=&r" (f1)
     : "ri" (mask));

 return !!((f0^f1) & mask);
}
