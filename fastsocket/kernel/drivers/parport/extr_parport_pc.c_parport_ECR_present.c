
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_pc_private {int ecr; } ;
struct parport {struct parport_pc_private* private_data; } ;


 int CONTROL (struct parport*) ;
 int ECONTROL (struct parport*) ;
 int ECR_SPP ;
 int ECR_WRITE (struct parport*,int) ;
 int frob_set_mode (struct parport*,int ) ;
 int inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static int parport_ECR_present(struct parport *pb)
{
 struct parport_pc_private *priv = pb->private_data;
 unsigned char r = 0xc;

 outb(r, CONTROL(pb));
 if ((inb(ECONTROL(pb)) & 0x3) == (r & 0x3)) {
  outb(r ^ 0x2, CONTROL(pb));

  r = inb(CONTROL(pb));
  if ((inb(ECONTROL(pb)) & 0x2) == (r & 0x2))
   goto no_reg;
 }

 if ((inb(ECONTROL(pb)) & 0x3) != 0x1)
  goto no_reg;

 ECR_WRITE(pb, 0x34);
 if (inb(ECONTROL(pb)) != 0x35)
  goto no_reg;

 priv->ecr = 1;
 outb(0xc, CONTROL(pb));


 frob_set_mode(pb, ECR_SPP);

 return 1;

 no_reg:
 outb(0xc, CONTROL(pb));
 return 0;
}
