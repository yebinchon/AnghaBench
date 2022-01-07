
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int dummy; } ;
struct hbq_dmabuf {int dummy; } ;


 int lpfc_bsg_ct_unsol_abort (struct lpfc_hba*,struct hbq_dmabuf*) ;

int
lpfc_ct_handle_unsol_abort(struct lpfc_hba *phba, struct hbq_dmabuf *dmabuf)
{
 int handled;


 handled = lpfc_bsg_ct_unsol_abort(phba, dmabuf);

 return handled;
}
