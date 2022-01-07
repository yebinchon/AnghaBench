
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport_ip32_private {int irq_complete; } ;
struct parport {TYPE_1__* physport; } ;
struct TYPE_2__ {struct parport_ip32_private* private_data; } ;


 int complete (int *) ;

__attribute__((used)) static inline void parport_ip32_wakeup(struct parport *p)
{
 struct parport_ip32_private * const priv = p->physport->private_data;
 complete(&priv->irq_complete);
}
