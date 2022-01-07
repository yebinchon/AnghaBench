
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlibrd {int state; scalar_t__ iosize; int iobase; int membase; } ;


 int BST_PROBED ;
 int iounmap (int ) ;
 int kfree (struct stlibrd*) ;
 int release_region (int ,scalar_t__) ;
 struct stlibrd** stli_brds ;
 int stli_cleanup_ports (struct stlibrd*) ;
 unsigned int stli_nrbrds ;

__attribute__((used)) static void istallion_cleanup_isa(void)
{
 struct stlibrd *brdp;
 unsigned int j;

 for (j = 0; (j < stli_nrbrds); j++) {
  if ((brdp = stli_brds[j]) == ((void*)0) || (brdp->state & BST_PROBED))
   continue;

  stli_cleanup_ports(brdp);

  iounmap(brdp->membase);
  if (brdp->iosize > 0)
   release_region(brdp->iobase, brdp->iosize);
  kfree(brdp);
  stli_brds[j] = ((void*)0);
 }
}
