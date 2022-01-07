
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dsr; } ;
struct parport_ip32_private {TYPE_2__ regs; } ;
struct parport {TYPE_1__* physport; } ;
struct TYPE_3__ {struct parport_ip32_private* private_data; } ;


 unsigned int DSR_TIMEOUT ;
 unsigned int parport_ip32_read_status (struct parport*) ;
 int pr_trace (struct parport*,char*,char*) ;
 int writeb (unsigned int,int ) ;

__attribute__((used)) static unsigned int parport_ip32_clear_epp_timeout(struct parport *p)
{
 struct parport_ip32_private * const priv = p->physport->private_data;
 unsigned int cleared;

 if (!(parport_ip32_read_status(p) & DSR_TIMEOUT))
  cleared = 1;
 else {
  unsigned int r;

  parport_ip32_read_status(p);
  r = parport_ip32_read_status(p);

  writeb(r | DSR_TIMEOUT, priv->regs.dsr);

  writeb(r & ~DSR_TIMEOUT, priv->regs.dsr);

  r = parport_ip32_read_status(p);
  cleared = !(r & DSR_TIMEOUT);
 }

 pr_trace(p, "(): %s", cleared ? "cleared" : "failed");
 return cleared;
}
