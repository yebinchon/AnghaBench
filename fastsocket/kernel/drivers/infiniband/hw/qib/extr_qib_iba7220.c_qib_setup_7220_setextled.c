
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
 int IBA7220_LEDBLINK_OFF_SHIFT ;
 int IBA7220_LEDBLINK_ON_SHIFT ;
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
 int kr_rcvpktledcnt ;
 scalar_t__ qib_7220_iblink_state (scalar_t__) ;
 scalar_t__ qib_7220_phys_portstate (scalar_t__) ;
 scalar_t__ qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qib_setup_7220_setextled(struct qib_pportdata *ppd, u32 on)
{
 struct qib_devdata *dd = ppd->dd;
 u64 extctl, ledblink = 0, val, lst, ltst;
 unsigned long flags;





 if (dd->diag_client)
  return;

 if (ppd->led_override) {
  ltst = (ppd->led_override & QIB_LED_PHYS) ?
   IB_PHYSPORTSTATE_LINKUP : IB_PHYSPORTSTATE_DISABLED,
  lst = (ppd->led_override & QIB_LED_LOG) ?
   IB_PORT_ACTIVE : IB_PORT_DOWN;
 } else if (on) {
  val = qib_read_kreg64(dd, kr_ibcstatus);
  ltst = qib_7220_phys_portstate(val);
  lst = qib_7220_iblink_state(val);
 } else {
  ltst = 0;
  lst = 0;
 }

 spin_lock_irqsave(&dd->cspec->gpio_lock, flags);
 extctl = dd->cspec->extctrl & ~(SYM_MASK(EXTCtrl, LEDPriPortGreenOn) |
     SYM_MASK(EXTCtrl, LEDPriPortYellowOn));
 if (ltst == IB_PHYSPORTSTATE_LINKUP) {
  extctl |= SYM_MASK(EXTCtrl, LEDPriPortGreenOn);





  ledblink = ((66600 * 1000UL / 4) << IBA7220_LEDBLINK_ON_SHIFT)
   | ((187500 * 1000UL / 4) << IBA7220_LEDBLINK_OFF_SHIFT);
 }
 if (lst == IB_PORT_ACTIVE)
  extctl |= SYM_MASK(EXTCtrl, LEDPriPortYellowOn);
 dd->cspec->extctrl = extctl;
 qib_write_kreg(dd, kr_extctrl, extctl);
 spin_unlock_irqrestore(&dd->cspec->gpio_lock, flags);

 if (ledblink)
  qib_write_kreg(dd, kr_rcvpktledcnt, ledblink);
}
