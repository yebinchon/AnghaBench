
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport_gsc_private {unsigned char const ctr; } ;
struct parport {TYPE_1__* physport; } ;
struct TYPE_2__ {struct parport_gsc_private* private_data; } ;


 unsigned char PARPORT_CONTROL_AUTOFD ;
 unsigned char PARPORT_CONTROL_INIT ;
 unsigned char PARPORT_CONTROL_SELECT ;
 unsigned char PARPORT_CONTROL_STROBE ;

__attribute__((used)) static inline unsigned char parport_gsc_read_control(struct parport *p)
{
 const unsigned char rm = (PARPORT_CONTROL_STROBE |
      PARPORT_CONTROL_AUTOFD |
      PARPORT_CONTROL_INIT |
      PARPORT_CONTROL_SELECT);
 const struct parport_gsc_private *priv = p->physport->private_data;
 return priv->ctr & rm;
}
