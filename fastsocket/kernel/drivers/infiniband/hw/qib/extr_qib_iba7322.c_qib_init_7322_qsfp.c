
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct qib_qsfp_data {struct qib_pportdata* ppd; } ;
struct qib_pportdata {int hw_pidx; struct qib_devdata* dd; TYPE_1__* cpspec; } ;
struct qib_devdata {TYPE_2__* cspec; } ;
struct TYPE_4__ {int extctrl; int gpio_mask; int gpio_lock; } ;
struct TYPE_3__ {struct qib_qsfp_data qsfp_data; } ;


 int EXTCtrl ;
 int GPIOInvert ;
 int QSFP_GPIO_MOD_PRS_N ;
 int QSFP_GPIO_PORT2_SHIFT ;
 int SYM_LSB (int ,int ) ;
 int kr_extctrl ;
 int kr_gpio_mask ;
 int qib_qsfp_init (struct qib_qsfp_data*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;
 int qsfp_7322_event ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qib_init_7322_qsfp(struct qib_pportdata *ppd)
{
 unsigned long flags;
 struct qib_qsfp_data *qd = &ppd->cpspec->qsfp_data;
 struct qib_devdata *dd = ppd->dd;
 u64 mod_prs_bit = QSFP_GPIO_MOD_PRS_N;

 mod_prs_bit <<= (QSFP_GPIO_PORT2_SHIFT * ppd->hw_pidx);
 qd->ppd = ppd;
 qib_qsfp_init(qd, qsfp_7322_event);
 spin_lock_irqsave(&dd->cspec->gpio_lock, flags);
 dd->cspec->extctrl |= (mod_prs_bit << SYM_LSB(EXTCtrl, GPIOInvert));
 dd->cspec->gpio_mask |= mod_prs_bit;
 qib_write_kreg(dd, kr_extctrl, dd->cspec->extctrl);
 qib_write_kreg(dd, kr_gpio_mask, dd->cspec->gpio_mask);
 spin_unlock_irqrestore(&dd->cspec->gpio_lock, flags);
}
