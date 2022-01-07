
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int * tcr; } ;


 int TASK_ENABLE ;
 TYPE_2__* bcom_eng ;
 int in_be16 (int *) ;
 int out_be16 (int *,int) ;

__attribute__((used)) static inline void
bcom_enable_task(int task)
{
        u16 reg;
        reg = in_be16(&bcom_eng->regs->tcr[task]);
        out_be16(&bcom_eng->regs->tcr[task], reg | TASK_ENABLE);
}
