
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool needs_unaligned_copy(const void *ptr)
{



 return ((ptr - ((void*)0)) & 3) != 0;

}
