
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCC_DATA ;
 int PCC_INDEX ;
 unsigned char inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static inline unsigned char getpcc(int reg)
{
 outb(reg, PCC_INDEX);
 return(inb(PCC_DATA));
}
