
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int STATUS (struct parport*) ;
 int outb (unsigned char,int ) ;
 int parport_pc_read_status (struct parport*) ;

__attribute__((used)) static int clear_epp_timeout(struct parport *pb)
{
 unsigned char r;

 if (!(parport_pc_read_status(pb) & 0x01))
  return 1;


 parport_pc_read_status(pb);
 r = parport_pc_read_status(pb);
 outb(r | 0x01, STATUS(pb));
 outb(r & 0xfe, STATUS(pb));
 r = parport_pc_read_status(pb);

 return !(r & 0x01);
}
