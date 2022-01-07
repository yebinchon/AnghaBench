
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSC_DATA ;
 int CSC_INDEX ;
 unsigned char inb (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static inline unsigned char getcsc(int reg)
{
 outb(reg, CSC_INDEX);
 return(inb(CSC_DATA));
}
