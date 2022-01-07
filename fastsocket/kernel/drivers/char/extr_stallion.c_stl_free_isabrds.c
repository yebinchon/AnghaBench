
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlbrd {int state; scalar_t__ iosize1; scalar_t__ iosize2; int ioaddr2; int ioaddr1; int irq; } ;


 int STL_PROBED ;
 int free_irq (int ,struct stlbrd*) ;
 int kfree (struct stlbrd*) ;
 int release_region (int ,scalar_t__) ;
 struct stlbrd** stl_brds ;
 int stl_cleanup_panels (struct stlbrd*) ;
 unsigned int stl_nrbrds ;

__attribute__((used)) static void stl_free_isabrds(void)
{
 struct stlbrd *brdp;
 unsigned int i;

 for (i = 0; i < stl_nrbrds; i++) {
  if ((brdp = stl_brds[i]) == ((void*)0) || (brdp->state & STL_PROBED))
   continue;

  free_irq(brdp->irq, brdp);

  stl_cleanup_panels(brdp);

  release_region(brdp->ioaddr1, brdp->iosize1);
  if (brdp->iosize2 > 0)
   release_region(brdp->ioaddr2, brdp->iosize2);

  kfree(brdp);
  stl_brds[i] = ((void*)0);
 }
}
