
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_ctl {int dummy; } ;
typedef int dma_addr_t ;


 int crypt_phys ;
 struct crypt_ctl* crypt_virt ;

__attribute__((used)) static inline struct crypt_ctl *crypt_phys2virt(dma_addr_t phys)
{
 return crypt_virt + (phys - crypt_phys) / sizeof(struct crypt_ctl);
}
