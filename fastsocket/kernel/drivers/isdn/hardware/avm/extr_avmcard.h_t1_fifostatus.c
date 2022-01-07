
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ T1_FIFOSTAT ;
 unsigned char inb (scalar_t__) ;

__attribute__((used)) static inline unsigned char t1_fifostatus(unsigned int base)
{
 return inb(base + T1_FIFOSTAT);
}
