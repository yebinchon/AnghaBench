
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSC_DATA ;
 int CSC_INDEX ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static inline void setcsc(int reg, unsigned char data)
{
 outb(reg, CSC_INDEX);
 outb(data, CSC_DATA);
}
