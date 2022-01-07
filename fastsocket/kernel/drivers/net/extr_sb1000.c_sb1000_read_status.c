
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inb (int const) ;

__attribute__((used)) static void
sb1000_read_status(const int ioaddr[], unsigned char in[])
{
 in[1] = inb(ioaddr[0] + 1);
 in[2] = inb(ioaddr[0] + 2);
 in[3] = inb(ioaddr[0] + 3);
 in[4] = inb(ioaddr[0] + 4);
 in[0] = inb(ioaddr[0] + 5);
 return;
}
