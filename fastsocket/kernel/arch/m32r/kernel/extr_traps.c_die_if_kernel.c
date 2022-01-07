
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int die (char const*,struct pt_regs*,long) ;
 int user_mode (struct pt_regs*) ;

__attribute__((used)) static __inline__ void die_if_kernel(const char * str,
 struct pt_regs * regs, long err)
{
 if (!user_mode(regs))
  die(str, regs, err);
}
