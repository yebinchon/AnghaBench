
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
struct parport_ip32_private {TYPE_2__ regs; } ;
struct parport {TYPE_1__* physport; } ;
struct TYPE_3__ {struct parport_ip32_private* private_data; } ;


 int writeb (unsigned char,int ) ;

__attribute__((used)) static inline void parport_ip32_write_data(struct parport *p, unsigned char d)
{
 struct parport_ip32_private * const priv = p->physport->private_data;
 writeb(d, priv->regs.data);
}
