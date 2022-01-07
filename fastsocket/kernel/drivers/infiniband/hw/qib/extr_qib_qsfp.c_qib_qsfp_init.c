
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qib_qsfp_data {TYPE_1__* ppd; int work; } ;
struct qib_devdata {int (* f_gpio_mod ) (struct qib_devdata*,int,int,int) ;} ;
struct TYPE_2__ {scalar_t__ hw_pidx; struct qib_devdata* dd; } ;


 int INIT_WORK (int *,void (*) (struct work_struct*)) ;
 int QSFP_GPIO_LP_MODE ;
 int QSFP_GPIO_MOD_RST_N ;
 int QSFP_GPIO_MOD_SEL_N ;
 int QSFP_GPIO_PORT2_SHIFT ;
 int stub1 (struct qib_devdata*,int,int,int) ;
 int stub2 (struct qib_devdata*,int,int,int) ;
 int udelay (int) ;

void qib_qsfp_init(struct qib_qsfp_data *qd,
     void (*fevent)(struct work_struct *))
{
 u32 mask, highs;

 struct qib_devdata *dd = qd->ppd->dd;


 INIT_WORK(&qd->work, fevent);






 mask = QSFP_GPIO_MOD_SEL_N | QSFP_GPIO_MOD_RST_N | QSFP_GPIO_LP_MODE;
 highs = mask - QSFP_GPIO_MOD_RST_N;
 if (qd->ppd->hw_pidx) {
  mask <<= QSFP_GPIO_PORT2_SHIFT;
  highs <<= QSFP_GPIO_PORT2_SHIFT;
 }
 dd->f_gpio_mod(dd, highs, mask, mask);
 udelay(20);

 dd->f_gpio_mod(dd, mask, mask, mask);
 return;
}
