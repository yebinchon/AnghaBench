
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ B1_OUTSTAT ;
 int inb (scalar_t__) ;

__attribute__((used)) static inline int b1_tx_empty(unsigned int base)
{
 return inb(base + B1_OUTSTAT) & 0x1;
}
