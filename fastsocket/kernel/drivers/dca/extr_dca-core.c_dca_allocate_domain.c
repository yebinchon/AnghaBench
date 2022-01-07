
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int dummy; } ;
struct dca_domain {struct pci_bus* pci_rc; int dca_providers; } ;


 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 struct dca_domain* kzalloc (int,int ) ;

__attribute__((used)) static struct dca_domain *dca_allocate_domain(struct pci_bus *rc)
{
 struct dca_domain *domain;

 domain = kzalloc(sizeof(*domain), GFP_NOWAIT);
 if (!domain)
  return ((void*)0);

 INIT_LIST_HEAD(&domain->dca_providers);
 domain->pci_rc = rc;

 return domain;
}
