
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_fpu_hard_struct {int dummy; } ;
struct TYPE_2__ {struct sh_fpu_hard_struct hard; } ;


 TYPE_1__ init_fpuregs ;

void fpinit(struct sh_fpu_hard_struct *fpregs)
{
 *fpregs = init_fpuregs.hard;
}
