
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int pdev; } ;


 int pci_set_master (int ) ;

void qla4_8xxx_pci_config(struct scsi_qla_host *ha)
{
 pci_set_master(ha->pdev);
}
