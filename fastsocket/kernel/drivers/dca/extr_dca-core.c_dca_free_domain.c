
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dca_domain {int node; } ;


 int kfree (struct dca_domain*) ;
 int list_del (int *) ;

__attribute__((used)) static void dca_free_domain(struct dca_domain *domain)
{
 list_del(&domain->node);
 kfree(domain);
}
