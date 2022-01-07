
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nes_qp {int dummy; } ;


 int nes_terminate_done (struct nes_qp*,int) ;

__attribute__((used)) static void nes_terminate_timeout(unsigned long context)
{
 struct nes_qp *nesqp = (struct nes_qp *)(unsigned long)context;

 nes_terminate_done(nesqp, 1);
}
