
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outw (short,int) ;

void sequoia_write(short value,short addr) {
  outw(addr,0x24);
  outw(value,0x26);
}
