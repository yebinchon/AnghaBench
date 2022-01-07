
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phys_addr ;


 scalar_t__ I596_NULL ;
 void* bus_to_virt (scalar_t__) ;

__attribute__((used)) static inline void *
pa_to_va(phys_addr x) {
 return (x == I596_NULL) ? ((void*)0) : bus_to_virt(x);
}
