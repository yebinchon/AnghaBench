
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long gru_end_paddr ;
 unsigned long gru_start_paddr ;

__attribute__((used)) static inline int is_gru_paddr(unsigned long paddr)
{
 return paddr >= gru_start_paddr && paddr < gru_end_paddr;
}
