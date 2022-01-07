
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int dummy; } ;


 int __domain_mapping (struct dmar_domain*,unsigned long,int *,unsigned long,unsigned long,int) ;

__attribute__((used)) static inline int domain_pfn_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
         unsigned long phys_pfn, unsigned long nr_pages,
         int prot)
{
 return __domain_mapping(domain, iov_pfn, ((void*)0), phys_pfn, nr_pages, prot);
}
