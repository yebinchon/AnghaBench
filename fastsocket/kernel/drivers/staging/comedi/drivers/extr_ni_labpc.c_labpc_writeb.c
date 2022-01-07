
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int writeb (unsigned int,void*) ;

__attribute__((used)) static inline void labpc_writeb(unsigned int byte, unsigned long address)
{
 writeb(byte, (void *)address);
}
