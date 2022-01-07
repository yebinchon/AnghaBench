
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long NONCACHE_OFFSET ;

__attribute__((used)) static inline void *_port2addr(unsigned long port)
{
 return (void *)(port | NONCACHE_OFFSET);
}
