
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vunmap (void const*) ;

__attribute__((used)) static inline void vunmap_sg(const void *va)
{
 vunmap(va);
}
