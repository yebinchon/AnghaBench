
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int parport_write_control (struct parport*,unsigned char) ;

__attribute__((used)) static void port_write_control(struct parport *p, unsigned char d)
{
 parport_write_control(p, d);
}
