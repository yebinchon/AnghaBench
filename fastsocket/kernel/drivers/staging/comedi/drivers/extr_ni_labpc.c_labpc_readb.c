
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int readb (void*) ;

__attribute__((used)) static inline unsigned int labpc_readb(unsigned long address)
{
 return readb((void *)address);
}
