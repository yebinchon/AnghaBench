
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,unsigned long) ;

__attribute__((used)) static inline void
load(unsigned long dst, unsigned long src, unsigned long count)
{
 memcpy((void *)dst, (void *)src, count);
}
