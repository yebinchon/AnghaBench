
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALIGN_MASK ;

__attribute__((used)) static inline void *align_ptr(void *ptr)
{
 return (void *) (((size_t) (ptr + ALIGN_MASK)) & ~ALIGN_MASK);
}
