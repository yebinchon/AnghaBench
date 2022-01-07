
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct ipath_portdata {scalar_t__ port_urgent; scalar_t__ port_urgent_poll; int port_wait; int port_flag; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {int dummy; } ;
struct file {int dummy; } ;


 int IPATH_PORT_WAITING_URG ;
 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 unsigned int ipath_poll_hdrqfull (struct ipath_portdata*) ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int rmb () ;
 int set_bit (int ,int *) ;
 int wmb () ;

__attribute__((used)) static unsigned int ipath_poll_urgent(struct ipath_portdata *pd,
          struct file *fp,
          struct poll_table_struct *pt)
{
 unsigned pollflag = 0;
 struct ipath_devdata *dd;

 dd = pd->port_dd;


 rmb();
 pollflag = ipath_poll_hdrqfull(pd);

 if (pd->port_urgent != pd->port_urgent_poll) {
  pollflag |= POLLIN | POLLRDNORM;
  pd->port_urgent_poll = pd->port_urgent;
 }

 if (!pollflag) {

  set_bit(IPATH_PORT_WAITING_URG, &pd->port_flag);

  wmb();
  poll_wait(fp, &pd->port_wait, pt);
 }

 return pollflag;
}
