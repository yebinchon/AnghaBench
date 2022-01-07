
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int mdelay (int) ;
 int parport_enable_irq (struct parport*) ;

__attribute__((used)) static void cpia_parport_enable_irq( struct parport *port ) {
 parport_enable_irq(port);
 mdelay(10);
 return;
}
