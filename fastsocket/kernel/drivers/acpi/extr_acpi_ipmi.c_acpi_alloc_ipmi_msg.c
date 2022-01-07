
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dev; } ;
struct acpi_ipmi_msg {struct acpi_ipmi_device* device; int head; int tx_complete; } ;
struct acpi_ipmi_device {struct pnp_dev* pnp_dev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_warn (int *,char*) ;
 int init_completion (int *) ;
 struct acpi_ipmi_msg* kzalloc (int,int ) ;

__attribute__((used)) static struct acpi_ipmi_msg *acpi_alloc_ipmi_msg(struct acpi_ipmi_device *ipmi)
{
 struct acpi_ipmi_msg *ipmi_msg;
 struct pnp_dev *pnp_dev = ipmi->pnp_dev;

 ipmi_msg = kzalloc(sizeof(struct acpi_ipmi_msg), GFP_KERNEL);
 if (!ipmi_msg) {
  dev_warn(&pnp_dev->dev, "Can't allocate memory for ipmi_msg\n");
  return ((void*)0);
 }
 init_completion(&ipmi_msg->tx_complete);
 INIT_LIST_HEAD(&ipmi_msg->head);
 ipmi_msg->device = ipmi;
 return ipmi_msg;
}
