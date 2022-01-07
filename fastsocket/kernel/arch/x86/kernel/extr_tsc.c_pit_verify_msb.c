
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char inb (int) ;

__attribute__((used)) static inline int pit_verify_msb(unsigned char val)
{

 inb(0x42);
 return inb(0x42) == val;
}
