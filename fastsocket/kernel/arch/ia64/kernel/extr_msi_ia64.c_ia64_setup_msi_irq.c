
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct msi_msg {int address_lo; int data; scalar_t__ address_hi; } ;
struct msi_desc {int dummy; } ;
typedef int cpumask_t ;


 int MSI_ADDR_DEST_ID_CPU (unsigned long) ;
 int MSI_ADDR_DEST_MODE_PHYS ;
 int MSI_ADDR_HEADER ;
 int MSI_ADDR_REDIRECTION_CPU ;
 int MSI_DATA_DELIVERY_FIXED ;
 int MSI_DATA_LEVEL_ASSERT ;
 int MSI_DATA_TRIGGER_EDGE ;
 int MSI_DATA_VECTOR (int) ;
 int cpu_online_map ;
 unsigned long cpu_physical_id (int ) ;
 int cpus_and (int ,int ,int ) ;
 int create_irq () ;
 int first_cpu (int ) ;
 int handle_edge_irq ;
 int ia64_msi_chip ;
 int irq_to_domain (int) ;
 int irq_to_vector (int) ;
 int set_irq_chip_and_handler (int,int *,int ) ;
 int set_irq_msi (int,struct msi_desc*) ;
 int write_msi_msg (int,struct msi_msg*) ;

int ia64_setup_msi_irq(struct pci_dev *pdev, struct msi_desc *desc)
{
 struct msi_msg msg;
 unsigned long dest_phys_id;
 int irq, vector;
 cpumask_t mask;

 irq = create_irq();
 if (irq < 0)
  return irq;

 set_irq_msi(irq, desc);
 cpus_and(mask, irq_to_domain(irq), cpu_online_map);
 dest_phys_id = cpu_physical_id(first_cpu(mask));
 vector = irq_to_vector(irq);

 msg.address_hi = 0;
 msg.address_lo =
  MSI_ADDR_HEADER |
  MSI_ADDR_DEST_MODE_PHYS |
  MSI_ADDR_REDIRECTION_CPU |
  MSI_ADDR_DEST_ID_CPU(dest_phys_id);

 msg.data =
  MSI_DATA_TRIGGER_EDGE |
  MSI_DATA_LEVEL_ASSERT |
  MSI_DATA_DELIVERY_FIXED |
  MSI_DATA_VECTOR(vector);

 write_msi_msg(irq, &msg);
 set_irq_chip_and_handler(irq, &ia64_msi_chip, handle_edge_irq);

 return 0;
}
