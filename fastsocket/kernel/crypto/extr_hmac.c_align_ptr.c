
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALIGN (unsigned long,unsigned int) ;

__attribute__((used)) static inline void *align_ptr(void *p, unsigned int align)
{
 return (void *)ALIGN((unsigned long)p, align);
}
