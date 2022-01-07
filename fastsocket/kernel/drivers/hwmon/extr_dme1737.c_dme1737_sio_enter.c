
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;

__attribute__((used)) static inline void dme1737_sio_enter(int sio_cip)
{
 outb(0x55, sio_cip);
}
