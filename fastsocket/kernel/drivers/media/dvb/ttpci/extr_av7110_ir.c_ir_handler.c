
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ir_tasklet; int ir_command; } ;
struct av7110 {TYPE_1__ ir; } ;


 int dprintk (int,char*,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void ir_handler(struct av7110 *av7110, u32 ircom)
{
 dprintk(4, "ir command = %08x\n", ircom);
 av7110->ir.ir_command = ircom;
 tasklet_schedule(&av7110->ir.ir_tasklet);
}
