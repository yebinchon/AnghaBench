
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb (int) ;
 int outb (int,int) ;

__attribute__((used)) static inline int dme1737_sio_inb(int sio_cip, int reg)
{
 outb(reg, sio_cip);
 return inb(sio_cip + 1);
}
