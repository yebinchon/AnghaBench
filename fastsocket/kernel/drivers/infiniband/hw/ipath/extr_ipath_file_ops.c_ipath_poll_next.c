
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct poll_table_struct {int dummy; } ;
struct ipath_portdata {int port_wait; scalar_t__ port_port; int port_flag; scalar_t__ port_rcvhdrtail_kvaddr; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {int ipath_rhdrhead_intr_off; int ipath_rcvctrl; TYPE_1__* ipath_kregs; scalar_t__ ipath_r_intravail_shift; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int kr_rcvctrl; } ;


 scalar_t__ IPATH_PORT_WAITING_RCV ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int ipath_get_rcvhdrtail (struct ipath_portdata*) ;
 unsigned int ipath_poll_hdrqfull (struct ipath_portdata*) ;
 int ipath_read_ureg32 (struct ipath_devdata*,int ,scalar_t__) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int ) ;
 int ipath_write_ureg (struct ipath_devdata*,int ,int,scalar_t__) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int rmb () ;
 int set_bit (scalar_t__,int *) ;
 int ur_rcvhdrhead ;
 int ur_rcvhdrtail ;
 int wmb () ;

__attribute__((used)) static unsigned int ipath_poll_next(struct ipath_portdata *pd,
        struct file *fp,
        struct poll_table_struct *pt)
{
 u32 head;
 u32 tail;
 unsigned pollflag = 0;
 struct ipath_devdata *dd;

 dd = pd->port_dd;


 rmb();
 pollflag = ipath_poll_hdrqfull(pd);

 head = ipath_read_ureg32(dd, ur_rcvhdrhead, pd->port_port);
 if (pd->port_rcvhdrtail_kvaddr)
  tail = ipath_get_rcvhdrtail(pd);
 else
  tail = ipath_read_ureg32(dd, ur_rcvhdrtail, pd->port_port);

 if (head != tail)
  pollflag |= POLLIN | POLLRDNORM;
 else {

  set_bit(IPATH_PORT_WAITING_RCV, &pd->port_flag);

  wmb();

  set_bit(pd->port_port + dd->ipath_r_intravail_shift,
   &dd->ipath_rcvctrl);

  ipath_write_kreg(dd, dd->ipath_kregs->kr_rcvctrl,
     dd->ipath_rcvctrl);

  if (dd->ipath_rhdrhead_intr_off)
   ipath_write_ureg(dd, ur_rcvhdrhead,
      dd->ipath_rhdrhead_intr_off | head,
      pd->port_port);

  poll_wait(fp, &pd->port_wait, pt);
 }

 return pollflag;
}
