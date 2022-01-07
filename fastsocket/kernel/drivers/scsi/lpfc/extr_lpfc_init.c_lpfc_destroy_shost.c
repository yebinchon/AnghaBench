
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;
struct lpfc_hba {struct lpfc_vport* pport; } ;


 int destroy_port (struct lpfc_vport*) ;

__attribute__((used)) static void
lpfc_destroy_shost(struct lpfc_hba *phba)
{
 struct lpfc_vport *vport = phba->pport;


 destroy_port(vport);

 return;
}
