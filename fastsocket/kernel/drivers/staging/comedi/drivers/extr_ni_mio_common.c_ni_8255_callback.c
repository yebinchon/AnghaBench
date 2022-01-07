
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 scalar_t__ Port_A ;
 int ni_readb (scalar_t__) ;
 int ni_writeb (int,scalar_t__) ;

__attribute__((used)) static int ni_8255_callback(int dir, int port, int data, unsigned long arg)
{
 struct comedi_device *dev = (struct comedi_device *)arg;

 if (dir) {
  ni_writeb(data, Port_A + 2 * port);
  return 0;
 } else {
  return ni_readb(Port_A + 2 * port);
 }
}
