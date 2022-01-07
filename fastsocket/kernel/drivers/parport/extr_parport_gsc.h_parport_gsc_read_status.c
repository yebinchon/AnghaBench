
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int STATUS (struct parport*) ;
 unsigned char parport_readb (int ) ;

__attribute__((used)) static inline unsigned char parport_gsc_read_status(struct parport *p)
{
 return parport_readb (STATUS(p));
}
