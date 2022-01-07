
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct qib_pportdata {int led_override; struct qib_devdata* dd; } ;
struct qib_devdata {TYPE_1__* cspec; scalar_t__ diag_client; } ;
struct TYPE_2__ {scalar_t__ extctrl; int gpio_lock; } ;


 int EXTCtrl ;
 scalar_t__ IB_PHYSPORTSTATE_DISABLED ;
 scalar_t__ IB_PHYSPORTSTATE_LINKUP ;
 scalar_t__ IB_PORT_ACTIVE ;
 scalar_t__ IB_PORT_DOWN ;
 int LEDPriPortGreenOn ;
 int LEDPriPortYellowOn ;
 int QIB_LED_LOG ;
 int QIB_LED_PHYS ;
 scalar_t__ SYM_MASK (int ,int ) ;
 int kr_extctrl ;
 int kr_ibcstatus ;
 scalar_t__ qib_6120_iblink_state (scalar_t__) ;
 scalar_t__ qib_6120_phys_portstate (scalar_t__) ;
 scalar_t__ qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qib_6120_setup_setextled(struct qib_pportdata *ppd, u32 on)
{
 u64 extctl, val, lst, ltst;
 unsigned long flags;
 struct qib_devdata *dd = ppd->dd;





 if (dd->diag_client)
  return;


 if (ppd->led_override) {
  ltst = (ppd->led_override & QIB_LED_PHYS) ?
   IB_PHYSPORTSTATE_LINKUP : IB_PHYSPORTSTATE_DISABLED,
  lst = (ppd->led_override & QIB_LED_LOG) ?
   IB_PORT_ACTIVE : IB_PORT_DOWN;
 } else if (on) {
  val = qib_read_kreg64(dd, kr_ibcstatus);
  ltst = qib_6120_phys_portstate(val);
  lst = qib_6120_iblink_state(val);
 } else {
  ltst = 0;
  lst = 0;
 }

 spin_lock_irqsave(&dd->cspec->gpio_lock, flags);
 extctl = dd->cspec->extctrl & ~(SYM_MASK(EXTCtrl, LEDPriPortGreenOn) |
     SYM_MASK(EXTCtrl, LEDPriPortYellowOn));

 if (ltst == IB_PHYSPORTSTATE_LINKUP)
  extctl |= SYM_MASK(EXTCtrl, LEDPriPortYellowOn);
 if (lst == IB_PORT_ACTIVE)
  extctl |= SYM_MASK(EXTCtrl, LEDPriPortGreenOn);
 dd->cspec->extctrl = extctl;
 qib_write_kreg(dd, kr_extctrl, extctl);
 spin_unlock_irqrestore(&dd->cspec->gpio_lock, flags);
}
