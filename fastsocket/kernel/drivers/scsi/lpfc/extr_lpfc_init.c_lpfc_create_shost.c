
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {int dummy; } ;
struct lpfc_hba {TYPE_1__* pcidev; struct lpfc_vport* pport; int brd_no; int sdev_cnt; int fc_arbtov; int fc_altov; int fc_ratov; int fc_edtov; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int FF_DEF_ALTOV ;
 int FF_DEF_ARBTOV ;
 int FF_DEF_EDTOV ;
 int FF_DEF_RATOV ;
 int atomic_set (int *,int ) ;
 struct lpfc_vport* lpfc_create_port (struct lpfc_hba*,int ,int *) ;
 int lpfc_debugfs_initialize (struct lpfc_vport*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int pci_set_drvdata (TYPE_1__*,struct Scsi_Host*) ;

__attribute__((used)) static int
lpfc_create_shost(struct lpfc_hba *phba)
{
 struct lpfc_vport *vport;
 struct Scsi_Host *shost;


 phba->fc_edtov = FF_DEF_EDTOV;
 phba->fc_ratov = FF_DEF_RATOV;
 phba->fc_altov = FF_DEF_ALTOV;
 phba->fc_arbtov = FF_DEF_ARBTOV;

 atomic_set(&phba->sdev_cnt, 0);
 vport = lpfc_create_port(phba, phba->brd_no, &phba->pcidev->dev);
 if (!vport)
  return -ENODEV;

 shost = lpfc_shost_from_vport(vport);
 phba->pport = vport;
 lpfc_debugfs_initialize(vport);

 pci_set_drvdata(phba->pcidev, shost);

 return 0;
}
