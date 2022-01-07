
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dma_mask; int dev; } ;
struct beiscsi_hba {int interface_handle; struct Scsi_Host* shost; TYPE_1__* pcidev; } ;
struct Scsi_Host {int transportt; int max_lun; int max_cmd_len; scalar_t__ max_channel; int max_id; int dma_boundary; } ;
struct TYPE_3__ {int dev; } ;


 int BE2_MAX_SESSIONS ;
 int BEISCSI_MAX_CMD_LEN ;
 int BEISCSI_NUM_MAX_LUN ;
 int beiscsi_scsi_transport ;
 int beiscsi_sht ;
 int dev_err (int *,char*) ;
 scalar_t__ iscsi_host_add (struct Scsi_Host*,int *) ;
 struct Scsi_Host* iscsi_host_alloc (int *,int,int ) ;
 int iscsi_host_free (struct Scsi_Host*) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 int memset (struct beiscsi_hba*,int ,int) ;
 TYPE_1__* pci_dev_get (struct pci_dev*) ;
 int pci_dev_put (TYPE_1__*) ;
 int pci_set_drvdata (struct pci_dev*,struct beiscsi_hba*) ;

__attribute__((used)) static struct beiscsi_hba *beiscsi_hba_alloc(struct pci_dev *pcidev)
{
 struct beiscsi_hba *phba;
 struct Scsi_Host *shost;

 shost = iscsi_host_alloc(&beiscsi_sht, sizeof(*phba), 0);
 if (!shost) {
  dev_err(&pcidev->dev,
   "beiscsi_hba_alloc - iscsi_host_alloc failed\n");
  return ((void*)0);
 }
 shost->dma_boundary = pcidev->dma_mask;
 shost->max_id = BE2_MAX_SESSIONS;
 shost->max_channel = 0;
 shost->max_cmd_len = BEISCSI_MAX_CMD_LEN;
 shost->max_lun = BEISCSI_NUM_MAX_LUN;
 shost->transportt = beiscsi_scsi_transport;
 phba = iscsi_host_priv(shost);
 memset(phba, 0, sizeof(*phba));
 phba->shost = shost;
 phba->pcidev = pci_dev_get(pcidev);
 pci_set_drvdata(pcidev, phba);
 phba->interface_handle = 0xFFFFFFFF;

 if (iscsi_host_add(shost, &phba->pcidev->dev))
  goto free_devices;

 return phba;

free_devices:
 pci_dev_put(phba->pcidev);
 iscsi_host_free(phba->shost);
 return ((void*)0);
}
