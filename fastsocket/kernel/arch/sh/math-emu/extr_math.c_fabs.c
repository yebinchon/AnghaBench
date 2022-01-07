
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_fpu_soft_struct {int dummy; } ;


 int FRn ;
 int _FP_W_TYPE_SIZE ;

__attribute__((used)) static int fabs(struct sh_fpu_soft_struct *fregs, int n)
{
 FRn &= ~(1 << (_FP_W_TYPE_SIZE - 1));
 return 0;
}
