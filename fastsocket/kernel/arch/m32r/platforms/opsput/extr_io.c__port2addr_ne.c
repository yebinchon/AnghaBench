
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void *_port2addr_ne(unsigned long port)
{
 return (void *)(port + 0x10000000);
}
