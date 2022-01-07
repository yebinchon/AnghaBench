
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tq; int * page_dma; int * page; } ;
struct TYPE_6__ {int reg_1394a; } ;
struct ti_lynx {int state; TYPE_2__ iso_rcv; int pcl_mem_dma; int pcl_mem; TYPE_3__* dev; int rcv_page_dma; int rcv_page; int aux_port; int local_ram; int local_rom; int registers; TYPE_4__* host; TYPE_1__ phyic; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int device; } ;
struct TYPE_8__ {int irq; } ;


 int DMA0_CHAN_CTRL ;
 int ISORCV_PAGES ;
 int LOCALRAM_SIZE ;
 int LONG_RESET_NO_FORCE_ROOT ;
 int MISC_CONTROL ;
 int MISC_CONTROL_SWRESET ;
 int PAGE_SIZE ;
 int PCI_INT_ENABLE ;
 int RESET_BUS ;

 int free_irq (int ,struct ti_lynx*) ;
 struct device* get_device (int *) ;
 int get_phy_reg (struct ti_lynx*,int) ;





 int hpsb_remove_host (TYPE_4__*) ;
 int iounmap (int ) ;

 int lynx_devctl (TYPE_4__*,int ,int ) ;
 int pci_free_consistent (TYPE_3__*,int ,int ,int ) ;
 struct ti_lynx* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int put_device (struct device*) ;
 int reg_set_bits (struct ti_lynx*,int ,int ) ;
 int reg_write (struct ti_lynx*,int ,int ) ;
 int set_phy_reg (struct ti_lynx*,int,int) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void remove_card(struct pci_dev *dev)
{
        struct ti_lynx *lynx;
 struct device *lynx_dev;
        int i;

        lynx = pci_get_drvdata(dev);
        if (!lynx) return;
        pci_set_drvdata(dev, ((void*)0));

 lynx_dev = get_device(&lynx->host->device);

        switch (lynx->state) {
        case 128:
                reg_write(lynx, PCI_INT_ENABLE, 0);
                hpsb_remove_host(lynx->host);
        case 131:
                reg_write(lynx, PCI_INT_ENABLE, 0);
                free_irq(lynx->dev->irq, lynx);


  if (lynx->phyic.reg_1394a)
   set_phy_reg(lynx, 4, ~0xc0 & get_phy_reg(lynx, 4));


  lynx_devctl(lynx->host, RESET_BUS, LONG_RESET_NO_FORCE_ROOT);

        case 130:
                reg_set_bits(lynx, MISC_CONTROL, MISC_CONTROL_SWRESET);

                reg_write(lynx, DMA0_CHAN_CTRL, 0);
                iounmap(lynx->registers);
                iounmap(lynx->local_rom);
                iounmap(lynx->local_ram);
                iounmap(lynx->aux_port);
        case 133:
                for (i = 0; i < ISORCV_PAGES; i++) {
                        if (lynx->iso_rcv.page[i]) {
                                pci_free_consistent(lynx->dev, PAGE_SIZE,
                                                    lynx->iso_rcv.page[i],
                                                    lynx->iso_rcv.page_dma[i]);
                        }
                }
                pci_free_consistent(lynx->dev, PAGE_SIZE, lynx->rcv_page,
                                    lynx->rcv_page_dma);
        case 132:
        case 129:
                pci_free_consistent(lynx->dev, LOCALRAM_SIZE, lynx->pcl_mem,
                                    lynx->pcl_mem_dma);
        case 134:

                ;
        }

 tasklet_kill(&lynx->iso_rcv.tq);

 if (lynx_dev)
  put_device(lynx_dev);
}
