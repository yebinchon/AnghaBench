
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ipath_devdata {int ipath_led_override; int ipath_boardrev; scalar_t__ ipath_extctrl; int ipath_gpio_lock; TYPE_1__* ipath_kregs; } ;
struct TYPE_2__ {int kr_extctrl; } ;


 scalar_t__ INFINIPATH_EXTC_LED1PRIPORT_ON ;
 scalar_t__ INFINIPATH_EXTC_LED2PRIPORT_ON ;
 scalar_t__ INFINIPATH_EXTC_LEDGBLERR_OFF ;
 scalar_t__ INFINIPATH_EXTC_LEDGBLOK_ON ;
 scalar_t__ INFINIPATH_IBCS_LT_STATE_DISABLED ;
 scalar_t__ INFINIPATH_IBCS_LT_STATE_LINKUP ;
 scalar_t__ INFINIPATH_IBCS_L_STATE_ACTIVE ;
 scalar_t__ INFINIPATH_IBCS_L_STATE_DOWN ;
 int IPATH_LED_LOG ;
 int IPATH_LED_PHYS ;
 scalar_t__ ipath_diag_inuse ;
 int ipath_write_kreg (struct ipath_devdata*,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipath_setup_ht_setextled(struct ipath_devdata *dd,
         u64 lst, u64 ltst)
{
 u64 extctl;
 unsigned long flags = 0;



 if (ipath_diag_inuse)
  return;


 if (dd->ipath_led_override) {
  ltst = (dd->ipath_led_override & IPATH_LED_PHYS)
   ? INFINIPATH_IBCS_LT_STATE_LINKUP
   : INFINIPATH_IBCS_LT_STATE_DISABLED;
  lst = (dd->ipath_led_override & IPATH_LED_LOG)
   ? INFINIPATH_IBCS_L_STATE_ACTIVE
   : INFINIPATH_IBCS_L_STATE_DOWN;
 }

 spin_lock_irqsave(&dd->ipath_gpio_lock, flags);




 if (dd->ipath_boardrev == 8) {





  extctl = (dd->ipath_extctrl & ~INFINIPATH_EXTC_LEDGBLOK_ON)
   | INFINIPATH_EXTC_LEDGBLERR_OFF;
  if (ltst == INFINIPATH_IBCS_LT_STATE_LINKUP)
   extctl &= ~INFINIPATH_EXTC_LEDGBLERR_OFF;
  if (lst == INFINIPATH_IBCS_L_STATE_ACTIVE)
   extctl |= INFINIPATH_EXTC_LEDGBLOK_ON;
 }
 else {
  extctl = dd->ipath_extctrl &
   ~(INFINIPATH_EXTC_LED1PRIPORT_ON |
     INFINIPATH_EXTC_LED2PRIPORT_ON);
  if (ltst == INFINIPATH_IBCS_LT_STATE_LINKUP)
   extctl |= INFINIPATH_EXTC_LED1PRIPORT_ON;
  if (lst == INFINIPATH_IBCS_L_STATE_ACTIVE)
   extctl |= INFINIPATH_EXTC_LED2PRIPORT_ON;
 }
 dd->ipath_extctrl = extctl;
 ipath_write_kreg(dd, dd->ipath_kregs->kr_extctrl, extctl);
 spin_unlock_irqrestore(&dd->ipath_gpio_lock, flags);
}
