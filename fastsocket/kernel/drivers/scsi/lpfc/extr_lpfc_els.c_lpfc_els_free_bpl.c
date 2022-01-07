
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int phys; int virt; } ;


 int kfree (struct lpfc_dmabuf*) ;
 int lpfc_mbuf_free (struct lpfc_hba*,int ,int ) ;

__attribute__((used)) static int
lpfc_els_free_bpl(struct lpfc_hba *phba, struct lpfc_dmabuf *buf_ptr)
{
 lpfc_mbuf_free(phba, buf_ptr->virt, buf_ptr->phys);
 kfree(buf_ptr);
 return 0;
}
