
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_hba {int ipv4addr; } ;
typedef int __be32 ;



__attribute__((used)) static inline __be32 cxgbi_get_iscsi_ipv4(struct cxgbi_hba *chba)
{
 return chba->ipv4addr;
}
