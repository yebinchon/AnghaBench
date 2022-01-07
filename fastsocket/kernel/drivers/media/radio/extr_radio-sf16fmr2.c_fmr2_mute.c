
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;
 int wait (int,int) ;

__attribute__((used)) static inline void fmr2_mute(int io)
{
 outb(0x00, io);
 wait(4, io);
}
