
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct sn_pcibus_provider {int (* dma_map_consistent ) (struct pci_dev*,int ,int,int) ;} ;
struct sn_irq_info {int irq_int_bit; int irq_xtalkaddr; void* irq_bridge; int irq_bridge_type; } ;
struct pcibus_bussoft {scalar_t__ bs_base; int bs_asic_type; } ;
struct pci_dev {int dummy; } ;
struct msi_msg {int data; void* address_lo; void* address_hi; } ;
struct TYPE_3__ {int is_64; } ;
struct msi_desc {TYPE_1__ msi_attrib; } ;
typedef int nasid_t ;
struct TYPE_4__ {int pci_addr; struct sn_irq_info* sn_irq_info; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NASID_GET (scalar_t__) ;
 int SN_DMA_ADDR_XIO ;
 int SN_DMA_MSI ;
 struct sn_pcibus_provider* SN_PCIDEV_BUSPROVIDER (struct pci_dev*) ;
 struct pcibus_bussoft* SN_PCIDEV_BUSSOFT (struct pci_dev*) ;
 int SWIN_WIDGETNUM (scalar_t__) ;
 int TIO_SWIN_WIDGETNUM (scalar_t__) ;
 int create_irq () ;
 int destroy_irq (int) ;
 int handle_edge_irq ;
 int kfree (struct sn_irq_info*) ;
 struct sn_irq_info* kzalloc (int,int ) ;
 int set_irq_chip_and_handler (int,int *,int ) ;
 int set_irq_msi (int,struct msi_desc*) ;
 int sn_intr_alloc (int,int,struct sn_irq_info*,int,int,int) ;
 int sn_intr_free (int,int,struct sn_irq_info*) ;
 int sn_irq_fixup (struct pci_dev*,struct sn_irq_info*) ;
 int sn_msi_chip ;
 TYPE_2__* sn_msi_info ;
 int stub1 (struct pci_dev*,int ,int,int) ;
 int write_msi_msg (int,struct msi_msg*) ;

int sn_setup_msi_irq(struct pci_dev *pdev, struct msi_desc *entry)
{
 struct msi_msg msg;
 int widget;
 int status;
 nasid_t nasid;
 u64 bus_addr;
 struct sn_irq_info *sn_irq_info;
 struct pcibus_bussoft *bussoft = SN_PCIDEV_BUSSOFT(pdev);
 struct sn_pcibus_provider *provider = SN_PCIDEV_BUSPROVIDER(pdev);
 int irq;

 if (!entry->msi_attrib.is_64)
  return -EINVAL;

 if (bussoft == ((void*)0))
  return -EINVAL;

 if (provider == ((void*)0) || provider->dma_map_consistent == ((void*)0))
  return -EINVAL;

 irq = create_irq();
 if (irq < 0)
  return irq;






 nasid = NASID_GET(bussoft->bs_base);
 widget = (nasid & 1) ?
   TIO_SWIN_WIDGETNUM(bussoft->bs_base) :
   SWIN_WIDGETNUM(bussoft->bs_base);

 sn_irq_info = kzalloc(sizeof(struct sn_irq_info), GFP_KERNEL);
 if (! sn_irq_info) {
  destroy_irq(irq);
  return -ENOMEM;
 }

 status = sn_intr_alloc(nasid, widget, sn_irq_info, irq, -1, -1);
 if (status) {
  kfree(sn_irq_info);
  destroy_irq(irq);
  return -ENOMEM;
 }

 sn_irq_info->irq_int_bit = -1;
 sn_irq_fixup(pdev, sn_irq_info);


 sn_irq_info->irq_bridge_type = bussoft->bs_asic_type;
 sn_irq_info->irq_bridge = (void *)bussoft->bs_base;




 bus_addr = (*provider->dma_map_consistent)(pdev,
     sn_irq_info->irq_xtalkaddr,
     sizeof(sn_irq_info->irq_xtalkaddr),
     SN_DMA_MSI|SN_DMA_ADDR_XIO);
 if (! bus_addr) {
  sn_intr_free(nasid, widget, sn_irq_info);
  kfree(sn_irq_info);
  destroy_irq(irq);
  return -ENOMEM;
 }

 sn_msi_info[irq].sn_irq_info = sn_irq_info;
 sn_msi_info[irq].pci_addr = bus_addr;

 msg.address_hi = (u32)(bus_addr >> 32);
 msg.address_lo = (u32)(bus_addr & 0x00000000ffffffff);





 msg.data = 0x100 + irq;

 set_irq_msi(irq, entry);
 write_msi_msg(irq, &msg);
 set_irq_chip_and_handler(irq, &sn_msi_chip, handle_edge_irq);

 return 0;
}
