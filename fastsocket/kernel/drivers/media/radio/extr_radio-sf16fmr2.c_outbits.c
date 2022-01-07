
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;
 int wait (int,int) ;

__attribute__((used)) static void outbits(int bits, unsigned int data, int nWait, int io)
{
 int bit;

 for (; --bits >= 0;) {
  bit = (data >> bits) & 1;
  outb(bit, io);
  wait(nWait, io);
  outb(bit | 2, io);
  wait(nWait, io);
  outb(bit, io);
  wait(nWait, io);
 }
}
