
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 short inw (int) ;
 int outw (int,int) ;

short sequoia_read(int addr) {
  outw(addr,0x24);
  return inw(0x26);
}
