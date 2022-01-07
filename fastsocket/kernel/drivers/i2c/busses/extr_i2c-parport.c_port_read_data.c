
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 unsigned char parport_read_data (struct parport*) ;

__attribute__((used)) static unsigned char port_read_data(struct parport *p)
{
 return parport_read_data(p);
}
