
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr ;


 int I596_NULL ;
 int virt_to_bus (void*) ;

__attribute__((used)) static inline phys_addr
va_to_pa(void *x) {
 return x ? virt_to_bus(x) : I596_NULL;
}
