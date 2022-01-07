
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fddi_addr {int* a; } ;


 int GROUP_ADDR ;

__attribute__((used)) static inline int is_individual(const struct fddi_addr *addr)
{
 return(!(addr->a[0] & GROUP_ADDR)) ;
}
