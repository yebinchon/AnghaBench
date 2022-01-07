
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int CHANS ;
 int LSB_PORT (int) ;
 int MSB_PORT (int) ;
 int inb (int ) ;
 int outb (int ,int ) ;

__attribute__((used)) static void zero_chans(struct comedi_device *dev)
{

 int i;
 for (i = 0; i < CHANS; ++i) {


  outb(0, LSB_PORT(i));
  outb(0, MSB_PORT(i));
 }
 inb(LSB_PORT(0));
}
