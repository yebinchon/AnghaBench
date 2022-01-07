
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_pportdata {TYPE_1__* dd; } ;
struct TYPE_2__ {int upd_pio_shadow; } ;


 int QIB_SENDCTRL_AVAIL_BLIP ;
 int QIB_SENDCTRL_DISARM_ALL ;
 int QIB_SENDCTRL_FLUSH ;
 int sendctrl_7220_mod (struct qib_pportdata*,int) ;

__attribute__((used)) static void qib_7220_sdma_hw_clean_up(struct qib_pportdata *ppd)
{

 sendctrl_7220_mod(ppd, QIB_SENDCTRL_DISARM_ALL | QIB_SENDCTRL_FLUSH |
     QIB_SENDCTRL_AVAIL_BLIP);
 ppd->dd->upd_pio_shadow = 1;
}
