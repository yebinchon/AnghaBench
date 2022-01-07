
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_ctl {int dummy; } ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ crypt_phys ;
 struct crypt_ctl* crypt_virt ;

__attribute__((used)) static inline dma_addr_t crypt_virt2phys(struct crypt_ctl *virt)
{
 return crypt_phys + (virt - crypt_virt) * sizeof(struct crypt_ctl);
}
