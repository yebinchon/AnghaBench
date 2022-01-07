
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipath_user_info {int spu_rcvhdrsize; } ;
struct ipath_portdata {int port_port; int port_piocnt; int port_pio_base; int port_lastrcvhdrqtail; int port_wait; int port_flag; scalar_t__ port_subport_cnt; scalar_t__ port_rcvhdrtail_kvaddr; int port_hdrqfull; int port_hdrqfull_poll; scalar_t__ port_urgent_poll; scalar_t__ port_urgent; scalar_t__ port_tidcursor; scalar_t__ port_piobufs; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {int ipath_ports_extrabuf; int ipath_pbufsport; int ipath_palign; unsigned long long ipath_rcvctrl; int ipath_flags; unsigned long long ipath_r_tailupd_shift; TYPE_1__* ipath_kregs; scalar_t__ ipath_r_portenable_shift; scalar_t__ ipath_piobufbase; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int kr_rcvctrl; } ;


 int IPATH_NODMA_RTAIL ;
 int IPATH_PORT_MASTER_UNINIT ;
 int VERBOSE ;
 int clear_bit (int ,int *) ;
 int ipath_cdbg (int ,char*,int,int ,...) ;
 int ipath_chg_pioavailkernel (struct ipath_devdata*,int,int,int ) ;
 int ipath_clear_rcvhdrtail (struct ipath_portdata*) ;
 int ipath_create_rcvhdrq (struct ipath_devdata*,struct ipath_portdata*) ;
 int ipath_create_user_egr (struct ipath_portdata*) ;
 int ipath_read_ureg32 (struct ipath_devdata*,int ,int) ;
 int ipath_setrcvhdrsize (struct ipath_devdata*,int ) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,unsigned long long) ;
 int ipath_write_ureg (struct ipath_devdata*,int ,int ,int) ;
 struct ipath_portdata* port_fp (struct file*) ;
 int set_bit (scalar_t__,unsigned long long*) ;
 scalar_t__ subport_fp (struct file*) ;
 int test_bit (int ,int *) ;
 int ur_rcvegrindexhead ;
 int ur_rcvegrindextail ;
 int wait_event_interruptible (int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int ipath_do_user_init(struct file *fp,
         const struct ipath_user_info *uinfo)
{
 int ret;
 struct ipath_portdata *pd = port_fp(fp);
 struct ipath_devdata *dd;
 u32 head32;


 if (subport_fp(fp)) {
  ret = wait_event_interruptible(pd->port_wait,
   !test_bit(IPATH_PORT_MASTER_UNINIT, &pd->port_flag));
  goto done;
 }

 dd = pd->port_dd;

 if (uinfo->spu_rcvhdrsize) {
  ret = ipath_setrcvhdrsize(dd, uinfo->spu_rcvhdrsize);
  if (ret)
   goto done;
 }




 if (pd->port_port <= dd->ipath_ports_extrabuf)
  pd->port_piocnt = dd->ipath_pbufsport + 1;
 else
  pd->port_piocnt = dd->ipath_pbufsport;


 if (pd->port_port <= dd->ipath_ports_extrabuf)
  pd->port_pio_base = (dd->ipath_pbufsport + 1)
   * (pd->port_port - 1);
 else
  pd->port_pio_base = dd->ipath_ports_extrabuf +
   dd->ipath_pbufsport * (pd->port_port - 1);
 pd->port_piobufs = dd->ipath_piobufbase +
  pd->port_pio_base * dd->ipath_palign;
 ipath_cdbg(VERBOSE, "piobuf base for port %u is 0x%x, piocnt %u,"
  " first pio %u\n", pd->port_port, pd->port_piobufs,
  pd->port_piocnt, pd->port_pio_base);
 ipath_chg_pioavailkernel(dd, pd->port_pio_base, pd->port_piocnt, 0);







 ret = ipath_create_rcvhdrq(dd, pd);
 if (!ret)
  ret = ipath_create_user_egr(pd);
 if (ret)
  goto done;






 head32 = ipath_read_ureg32(dd, ur_rcvegrindextail, pd->port_port);
 ipath_write_ureg(dd, ur_rcvegrindexhead, head32, pd->port_port);
 pd->port_lastrcvhdrqtail = -1;
 ipath_cdbg(VERBOSE, "Wrote port%d egrhead %x from tail regs\n",
  pd->port_port, head32);
 pd->port_tidcursor = 0;


 pd->port_urgent = 0;
 pd->port_urgent_poll = 0;
 pd->port_hdrqfull_poll = pd->port_hdrqfull;
 set_bit(dd->ipath_r_portenable_shift + pd->port_port,
  &dd->ipath_rcvctrl);
 if (!(dd->ipath_flags & IPATH_NODMA_RTAIL)) {
  if (pd->port_rcvhdrtail_kvaddr)
   ipath_clear_rcvhdrtail(pd);
  ipath_write_kreg(dd, dd->ipath_kregs->kr_rcvctrl,
   dd->ipath_rcvctrl &
   ~(1ULL << dd->ipath_r_tailupd_shift));
 }
 ipath_write_kreg(dd, dd->ipath_kregs->kr_rcvctrl,
    dd->ipath_rcvctrl);

 if (pd->port_subport_cnt) {
  clear_bit(IPATH_PORT_MASTER_UNINIT, &pd->port_flag);
  wake_up(&pd->port_wait);
 }
done:
 return ret;
}
