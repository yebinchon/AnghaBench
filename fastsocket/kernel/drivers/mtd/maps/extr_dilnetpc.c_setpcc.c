
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCC_DATA ;
 int PCC_INDEX ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static inline void setpcc(int reg, unsigned char data)
{
 outb(reg, PCC_INDEX);
 outb(data, PCC_DATA);
}
