
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu_ldg {int irq; } ;
struct niu {int num_ldg; struct niu_ldg* ldg; } ;


 int free_irq (int ,struct niu_ldg*) ;

__attribute__((used)) static void niu_free_irq(struct niu *np)
{
 int i;

 for (i = 0; i < np->num_ldg; i++) {
  struct niu_ldg *lp = &np->ldg[i];

  free_irq(lp->irq, lp);
 }
}
