
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MASK1 ;
 int MASK2 ;
 int outb (int,int ) ;

__attribute__((used)) static void DisableDmaChannel(unsigned int channel)
{
 switch (channel) {
 case 0:
  outb(4, MASK1);
  break;
 case 1:
  outb(5, MASK1);
  break;
 case 2:
  outb(6, MASK1);
  break;
 case 3:
  outb(7, MASK1);
  break;
 case 5:
  outb(5, MASK2);
  break;
 case 6:
  outb(6, MASK2);
  break;
 case 7:
  outb(7, MASK2);
  break;
 default:
  break;
 };
}
