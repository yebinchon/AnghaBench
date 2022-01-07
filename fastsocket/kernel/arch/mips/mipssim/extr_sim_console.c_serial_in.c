
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int inb (int) ;

__attribute__((used)) static inline unsigned int serial_in(int offset)
{
 return inb(0x3f8 + offset);
}
