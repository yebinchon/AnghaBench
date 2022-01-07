
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ipath_portdata {int port_wait; int port_urgent; int port_flag; scalar_t__ port_cnt; } ;
struct ipath_devdata {int ipath_i_rcvavail_shift; int ipath_i_rcvavail_mask; int ipath_i_rcvurg_shift; int ipath_i_rcvurg_mask; int ipath_cfgports; int ipath_rcvctrl; TYPE_1__* ipath_kregs; scalar_t__ ipath_r_intravail_shift; struct ipath_portdata** ipath_pd; } ;
struct TYPE_2__ {int kr_rcvctrl; } ;


 int IPATH_PORT_WAITING_RCV ;
 int IPATH_PORT_WAITING_URG ;
 int clear_bit (scalar_t__,int *) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int ) ;
 int rmb () ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void handle_urcv(struct ipath_devdata *dd, u64 istat)
{
 u64 portr;
 int i;
 int rcvdint = 0;
 rmb();
 portr = ((istat >> dd->ipath_i_rcvavail_shift) &
   dd->ipath_i_rcvavail_mask) |
  ((istat >> dd->ipath_i_rcvurg_shift) &
   dd->ipath_i_rcvurg_mask);
 for (i = 1; i < dd->ipath_cfgports; i++) {
  struct ipath_portdata *pd = dd->ipath_pd[i];

  if (portr & (1 << i) && pd && pd->port_cnt) {
   if (test_and_clear_bit(IPATH_PORT_WAITING_RCV,
            &pd->port_flag)) {
    clear_bit(i + dd->ipath_r_intravail_shift,
       &dd->ipath_rcvctrl);
    wake_up_interruptible(&pd->port_wait);
    rcvdint = 1;
   } else if (test_and_clear_bit(IPATH_PORT_WAITING_URG,
            &pd->port_flag)) {
    pd->port_urgent++;
    wake_up_interruptible(&pd->port_wait);
   }
  }
 }
 if (rcvdint) {




  ipath_write_kreg(dd, dd->ipath_kregs->kr_rcvctrl,
     dd->ipath_rcvctrl);
 }
}
