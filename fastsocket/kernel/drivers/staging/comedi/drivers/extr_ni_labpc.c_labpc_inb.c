
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int inb (unsigned long) ;

__attribute__((used)) static inline unsigned int labpc_inb(unsigned long address)
{
 return inb(address);
}
