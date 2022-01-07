
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * SCMD; int * SASR; } ;
typedef TYPE_1__ wd33c93_regs ;
typedef int uchar ;


 int mb () ;

__attribute__((used)) static inline uchar
read_wd33c93(const wd33c93_regs regs, uchar reg_num)
{
 *regs.SASR = reg_num;
 mb();
 return (*regs.SCMD);
}
