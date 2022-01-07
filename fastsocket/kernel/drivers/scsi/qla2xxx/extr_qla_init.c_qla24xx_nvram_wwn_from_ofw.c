
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qla_hw_data {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct nvram_24xx {int node_name; int port_name; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int WWN_SIZE ;
 int memcpy (int ,int const*,int) ;
 int * of_get_property (struct device_node*,char*,int*) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;

__attribute__((used)) static void qla24xx_nvram_wwn_from_ofw(scsi_qla_host_t *vha,
 struct nvram_24xx *nv)
{
}
