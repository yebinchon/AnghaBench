
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dcr; } ;
struct parport_ip32_private {unsigned int dcr_writable; unsigned int dcr_cache; TYPE_2__ regs; } ;
struct parport {TYPE_1__* physport; } ;
struct TYPE_3__ {struct parport_ip32_private* private_data; } ;


 int CHECK_EXTRA_BITS (struct parport*,unsigned int,unsigned int) ;
 int writeb (unsigned int,int ) ;

__attribute__((used)) static inline void __parport_ip32_write_control(struct parport *p,
      unsigned int c)
{
 struct parport_ip32_private * const priv = p->physport->private_data;
 CHECK_EXTRA_BITS(p, c, priv->dcr_writable);
 c &= priv->dcr_writable;
 writeb(c, priv->regs.dcr);
 priv->dcr_cache = c;
}
