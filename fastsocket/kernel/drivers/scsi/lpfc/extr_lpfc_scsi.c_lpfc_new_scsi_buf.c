
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {TYPE_1__* phba; } ;
struct TYPE_2__ {int (* lpfc_new_scsi_buf ) (struct lpfc_vport*,int) ;} ;


 int stub1 (struct lpfc_vport*,int) ;

__attribute__((used)) static inline int
lpfc_new_scsi_buf(struct lpfc_vport *vport, int num_to_alloc)
{
 return vport->phba->lpfc_new_scsi_buf(vport, num_to_alloc);
}
