
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maxiradio {int io; } ;


 int dprintk (struct maxiradio*,int,char*) ;
 int outb (int ,int ) ;
 int power ;

__attribute__((used)) static void turn_power(struct maxiradio *dev, int p)
{
 if (p != 0) {
  dprintk(dev, 1, "Radio powered on\n");
  outb(power, dev->io);
 } else {
  dprintk(dev, 1, "Radio powered off\n");
  outb(0, dev->io);
 }
}
