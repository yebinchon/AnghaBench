
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9966_dev {int ppmode; int pport; } ;


 int IEEE1284_ADDR ;
 int IEEE1284_DATA ;
 scalar_t__ parport_negotiate (int ,int) ;
 int parport_read (int ,unsigned char*,int) ;
 int parport_write (int ,unsigned char const*,int) ;

__attribute__((used)) static int w9966_rReg(struct w9966_dev* cam, int reg)
{

 const unsigned char addr = 0x80 | (reg & 0x1f);
 unsigned char val;

 if (parport_negotiate(cam->pport, cam->ppmode | IEEE1284_ADDR) != 0)
  return -1;
 if (parport_write(cam->pport, &addr, 1) != 1)
  return -1;
 if (parport_negotiate(cam->pport, cam->ppmode | IEEE1284_DATA) != 0)
  return -1;
 if (parport_read(cam->pport, &val, 1) != 1)
  return -1;

 return val;
}
