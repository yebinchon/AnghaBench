
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cxgbi_gather_list {int dummy; } ;


 int ddp_gl_unmap (struct pci_dev*,struct cxgbi_gather_list*) ;
 int kfree (struct cxgbi_gather_list*) ;

__attribute__((used)) static void ddp_release_gl(struct cxgbi_gather_list *gl,
      struct pci_dev *pdev)
{
 ddp_gl_unmap(pdev, gl);
 kfree(gl);
}
