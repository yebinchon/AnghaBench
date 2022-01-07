
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int (* f_gpio_mod ) (struct qib_devdata*,int ,int ,int ) ;} ;


 int rmb () ;
 int stub1 (struct qib_devdata*,int ,int ,int ) ;

__attribute__((used)) static void i2c_wait_for_writes(struct qib_devdata *dd)
{





 dd->f_gpio_mod(dd, 0, 0, 0);
 rmb();
}
