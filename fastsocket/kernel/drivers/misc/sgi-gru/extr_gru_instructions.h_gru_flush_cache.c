
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __flush_cache (void*) ;

__attribute__((used)) static inline void gru_flush_cache(void *p)
{
 __flush_cache(p);
}
