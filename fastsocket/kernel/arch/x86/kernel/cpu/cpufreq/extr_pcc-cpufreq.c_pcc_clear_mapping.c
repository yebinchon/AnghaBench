
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iounmap (int *) ;
 int * pcch_virt_addr ;

__attribute__((used)) static inline void pcc_clear_mapping(void)
{
 if (pcch_virt_addr)
  iounmap(pcch_virt_addr);
 pcch_virt_addr = ((void*)0);
}
