
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * SCMD; int * SASR; } ;
typedef TYPE_1__ wd33c93_regs ;
typedef int uchar ;


 int WD_COMMAND ;
 int mb () ;

__attribute__((used)) static inline void
write_wd33c93_cmd(const wd33c93_regs regs, uchar cmd)
{
 *regs.SASR = WD_COMMAND;
 mb();
 *regs.SCMD = cmd;
 mb();
}
