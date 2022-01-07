
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_portdata {scalar_t__ port_port; scalar_t__ port_rcvhdrtail_kvaddr; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {TYPE_1__* ipath_kregs; int ipath_rcvctrl; scalar_t__ ipath_r_portenable_shift; int ipath_unit; } ;
struct TYPE_2__ {int kr_scratch; int kr_rcvctrl; } ;


 int PROC ;
 int clear_bit (scalar_t__,int *) ;
 int ipath_cdbg (int ,char*,char*,int ,scalar_t__,unsigned int) ;
 int ipath_clear_rcvhdrtail (struct ipath_portdata*) ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_read_ureg32 (struct ipath_devdata*,int ,scalar_t__) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int ) ;
 int set_bit (scalar_t__,int *) ;
 int ur_rcvhdrtail ;

__attribute__((used)) static int ipath_manage_rcvq(struct ipath_portdata *pd, unsigned subport,
        int start_stop)
{
 struct ipath_devdata *dd = pd->port_dd;

 ipath_cdbg(PROC, "%sabling rcv for unit %u port %u:%u\n",
     start_stop ? "en" : "dis", dd->ipath_unit,
     pd->port_port, subport);
 if (subport)
  goto bail;

 if (start_stop) {
  if (pd->port_rcvhdrtail_kvaddr)
   ipath_clear_rcvhdrtail(pd);
  set_bit(dd->ipath_r_portenable_shift + pd->port_port,
   &dd->ipath_rcvctrl);
 } else
  clear_bit(dd->ipath_r_portenable_shift + pd->port_port,
     &dd->ipath_rcvctrl);
 ipath_write_kreg(dd, dd->ipath_kregs->kr_rcvctrl,
    dd->ipath_rcvctrl);

 ipath_read_kreg64(dd, dd->ipath_kregs->kr_scratch);
 if (start_stop) {







  ipath_read_ureg32(dd, ur_rcvhdrtail, pd->port_port);
 }

bail:
 return 0;
}
