
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc3_submodule {int dummy; } ;
struct ioc3_driver_data {int dummy; } ;


 unsigned int SIO_IR_SA ;
 unsigned int SIO_IR_SB ;
 int ioc3uart_intr_one (struct ioc3_submodule*,struct ioc3_driver_data*,unsigned int) ;

__attribute__((used)) static int ioc3uart_intr(struct ioc3_submodule *is,
   struct ioc3_driver_data *idd,
   unsigned int pending)
{
 int ret = 0;






 if (pending & SIO_IR_SA)
  ret |= ioc3uart_intr_one(is, idd, pending & SIO_IR_SA);
 if (pending & SIO_IR_SB)
  ret |= ioc3uart_intr_one(is, idd, pending & SIO_IR_SB);

 return ret;
}
