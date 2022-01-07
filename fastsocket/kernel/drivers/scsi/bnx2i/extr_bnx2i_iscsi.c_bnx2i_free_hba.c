
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2i_hba {int * regview; int pcidev; int ep_destroy_list; int ep_active_list; int ep_ofld_list; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int bnx2i_free_mp_bdt (struct bnx2i_hba*) ;
 int bnx2i_release_free_cid_que (struct bnx2i_hba*) ;
 int iscsi_host_free (struct Scsi_Host*) ;
 int iscsi_host_remove (struct Scsi_Host*) ;
 int pci_dev_put (int ) ;
 int pci_iounmap (int ,int *) ;

void bnx2i_free_hba(struct bnx2i_hba *hba)
{
 struct Scsi_Host *shost = hba->shost;

 iscsi_host_remove(shost);
 INIT_LIST_HEAD(&hba->ep_ofld_list);
 INIT_LIST_HEAD(&hba->ep_active_list);
 INIT_LIST_HEAD(&hba->ep_destroy_list);
 pci_dev_put(hba->pcidev);

 if (hba->regview) {
  pci_iounmap(hba->pcidev, hba->regview);
  hba->regview = ((void*)0);
 }
 bnx2i_free_mp_bdt(hba);
 bnx2i_release_free_cid_que(hba);
 iscsi_host_free(shost);
}
