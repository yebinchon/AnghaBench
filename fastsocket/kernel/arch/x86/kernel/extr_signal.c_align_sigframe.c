
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int round_down (unsigned long,int) ;

__attribute__((used)) static unsigned long align_sigframe(unsigned long sp)
{







 sp = round_down(sp, 16) - 8;

 return sp;
}
