
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int host; scalar_t__ boot_kset; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ is_qla40XX (struct scsi_qla_host*) ;
 int iscsi_boot_destroy_kset (scalar_t__) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 struct scsi_qla_host* pci_get_drvdata (struct pci_dev*) ;
 int pci_is_enabled (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int ql4xdisablesysfsboot ;
 int qla4_8xxx_free_sysfs_attr (struct scsi_qla_host*) ;
 int qla4xxx_destroy_fw_ddb_session (struct scsi_qla_host*) ;
 int qla4xxx_destroy_ifaces (struct scsi_qla_host*) ;
 int qla4xxx_free_adapter (struct scsi_qla_host*) ;
 int qla4xxx_prevent_other_port_reinit (struct scsi_qla_host*) ;
 int qla4xxx_sysfs_ddb_remove (struct scsi_qla_host*) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;

__attribute__((used)) static void qla4xxx_remove_adapter(struct pci_dev *pdev)
{
 struct scsi_qla_host *ha;





 if (!pci_is_enabled(pdev))
  return;

 ha = pci_get_drvdata(pdev);

 if (is_qla40XX(ha))
  qla4xxx_prevent_other_port_reinit(ha);


 qla4xxx_destroy_ifaces(ha);

 if ((!ql4xdisablesysfsboot) && ha->boot_kset)
  iscsi_boot_destroy_kset(ha->boot_kset);

 qla4xxx_destroy_fw_ddb_session(ha);
 qla4_8xxx_free_sysfs_attr(ha);

 qla4xxx_sysfs_ddb_remove(ha);
 scsi_remove_host(ha->host);

 qla4xxx_free_adapter(ha);

 scsi_host_put(ha->host);

 pci_disable_pcie_error_reporting(pdev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
}
