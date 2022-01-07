
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 unsigned char status_sunbpp_to_pc (struct parport*) ;

__attribute__((used)) static unsigned char parport_sunbpp_read_status(struct parport *p)
{
 return status_sunbpp_to_pc(p);
}
