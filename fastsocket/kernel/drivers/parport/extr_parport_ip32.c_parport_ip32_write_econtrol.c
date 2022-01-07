
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ecr; } ;
struct parport_ip32_private {TYPE_2__ regs; } ;
struct parport {TYPE_1__* physport; } ;
struct TYPE_3__ {struct parport_ip32_private* private_data; } ;


 int writeb (unsigned int,int ) ;

__attribute__((used)) static inline void parport_ip32_write_econtrol(struct parport *p,
            unsigned int c)
{
 struct parport_ip32_private * const priv = p->physport->private_data;
 writeb(c, priv->regs.ecr);
}
