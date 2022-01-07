
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int dummy; } ;


 int lpfc_ct_ignore_hbq_buffer (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_dmabuf*,int ) ;

__attribute__((used)) static void
lpfc_ct_unsol_buffer(struct lpfc_hba *phba, struct lpfc_iocbq *piocbq,
       struct lpfc_dmabuf *mp, uint32_t size)
{
 lpfc_ct_ignore_hbq_buffer(phba, piocbq, mp, size);
}
