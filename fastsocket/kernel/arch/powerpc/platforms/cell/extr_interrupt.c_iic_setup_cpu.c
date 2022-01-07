
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* regs; } ;
struct TYPE_3__ {int prio; } ;


 TYPE_2__ __get_cpu_var (int ) ;
 int iic ;
 int out_be64 (int *,int) ;

void iic_setup_cpu(void)
{
 out_be64(&__get_cpu_var(iic).regs->prio, 0xff);
}
