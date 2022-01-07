
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport_ip32_private {unsigned int dcr_cache; } ;
struct parport {TYPE_1__* physport; } ;
struct TYPE_2__ {struct parport_ip32_private* private_data; } ;



__attribute__((used)) static inline unsigned int __parport_ip32_read_control(struct parport *p)
{
 struct parport_ip32_private * const priv = p->physport->private_data;
 return priv->dcr_cache;
}
