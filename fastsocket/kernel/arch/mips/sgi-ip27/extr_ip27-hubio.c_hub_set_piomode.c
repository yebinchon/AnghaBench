
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int nasid_t ;
typedef void* hubreg_t ;
struct TYPE_2__ {scalar_t__ iwcr_dir_con; void* wcr_reg_value; } ;
typedef TYPE_1__ hubii_wcr_t ;


 unsigned int HUB_WIDGET_ID_MAX ;
 unsigned int HUB_WIDGET_ID_MIN ;
 int IIO_OUTWIDGET_ACCESS ;
 int IIO_WCR ;
 void* REMOTE_HUB_L (int ,int ) ;
 int REMOTE_HUB_S (int ,int ,void*) ;
 int hub_setup_prb (int ,unsigned int,int) ;

__attribute__((used)) static void hub_set_piomode(nasid_t nasid)
{
 hubreg_t ii_iowa;
 hubii_wcr_t ii_wcr;
 unsigned i;

 ii_iowa = REMOTE_HUB_L(nasid, IIO_OUTWIDGET_ACCESS);
 REMOTE_HUB_S(nasid, IIO_OUTWIDGET_ACCESS, 0);

 ii_wcr.wcr_reg_value = REMOTE_HUB_L(nasid, IIO_WCR);

 if (ii_wcr.iwcr_dir_con) {



  hub_setup_prb(nasid, 0, 3);
 } else {



  hub_setup_prb(nasid, 0, 1);
 }





 for (i = HUB_WIDGET_ID_MIN; i <= HUB_WIDGET_ID_MAX; i++)
  hub_setup_prb(nasid, i, 3);

 REMOTE_HUB_S(nasid, IIO_OUTWIDGET_ACCESS, ii_iowa);
}
