
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct dmar_domain {int dummy; } ;


 int __domain_mapping (struct dmar_domain*,unsigned long,struct scatterlist*,int ,unsigned long,int) ;

__attribute__((used)) static inline int domain_sg_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
        struct scatterlist *sg, unsigned long nr_pages,
        int prot)
{
 return __domain_mapping(domain, iov_pfn, sg, 0, nr_pages, prot);
}
