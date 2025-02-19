
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r592_device {int mmio; int io_thread; int dummy_dma_page_physical_address; scalar_t__ dummy_dma_page; int irq; int detect_timer; int pio_fifo; int dma_done; int io_thread_lock; int irq_lock; struct pci_dev* pci_dev; struct memstick_host* host; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int irq; int dev; } ;
struct memstick_host {int set_param; int request; int caps; } ;


 int DMA_BIT_MASK (int) ;
 int DRV_NAME ;
 int ENOMEM ;
 int INIT_KFIFO (int ) ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int MEMSTICK_CAP_PAR4 ;
 int PAGE_SIZE ;
 int PTR_ERR (int ) ;
 int free_irq (int ,struct r592_device*) ;
 int init_completion (int *) ;
 int iounmap (int ) ;
 int kthread_run (int ,struct r592_device*,char*) ;
 int kthread_stop (int ) ;
 scalar_t__ memstick_add_host (struct memstick_host*) ;
 struct memstick_host* memstick_alloc_host (int,int *) ;
 int memstick_free_host (struct memstick_host*) ;
 struct r592_device* memstick_priv (struct memstick_host*) ;
 int message (char*) ;
 scalar_t__ pci_alloc_consistent (struct pci_dev*,int ,int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int ,scalar_t__,int ) ;
 int pci_ioremap_bar (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct r592_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int r592_check_dma (struct r592_device*) ;
 int r592_detect_timer ;
 int r592_irq ;
 int r592_process_thread ;
 int r592_set_param ;
 int r592_stop_dma (struct r592_device*,int ) ;
 int r592_submit_req ;
 int r592_update_card_detect (struct r592_device*) ;
 scalar_t__ request_irq (int ,int *,int ,int ,struct r592_device*) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int r592_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 int error = -ENOMEM;
 struct memstick_host *host;
 struct r592_device *dev;


 host = memstick_alloc_host(sizeof(struct r592_device), &pdev->dev);
 if (!host)
  goto error1;

 dev = memstick_priv(host);
 dev->host = host;
 dev->pci_dev = pdev;
 pci_set_drvdata(pdev, dev);


 error = pci_enable_device(pdev);
 if (error)
  goto error2;

 pci_set_master(pdev);
 error = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
 if (error)
  goto error3;

 error = pci_request_regions(pdev, DRV_NAME);
 if (error)
  goto error3;

 dev->mmio = pci_ioremap_bar(pdev, 0);
 if (!dev->mmio)
  goto error4;

 dev->irq = pdev->irq;
 spin_lock_init(&dev->irq_lock);
 spin_lock_init(&dev->io_thread_lock);
 init_completion(&dev->dma_done);
 INIT_KFIFO(dev->pio_fifo);
 setup_timer(&dev->detect_timer,
  r592_detect_timer, (long unsigned int)dev);


 host->caps = MEMSTICK_CAP_PAR4;
 host->request = r592_submit_req;
 host->set_param = r592_set_param;
 r592_check_dma(dev);

 dev->io_thread = kthread_run(r592_process_thread, dev, "r592_io");
 if (IS_ERR(dev->io_thread)) {
  error = PTR_ERR(dev->io_thread);
  goto error5;
 }


 dev->dummy_dma_page = pci_alloc_consistent(pdev, PAGE_SIZE,
  &dev->dummy_dma_page_physical_address);
 r592_stop_dma(dev , 0);

 if (request_irq(dev->irq, &r592_irq, IRQF_SHARED,
     DRV_NAME, dev))
  goto error6;

 r592_update_card_detect(dev);
 if (memstick_add_host(host))
  goto error7;

 message("driver succesfully loaded");
 return 0;
error7:
 free_irq(dev->irq, dev);
error6:
 if (dev->dummy_dma_page)
  pci_free_consistent(pdev, PAGE_SIZE, dev->dummy_dma_page,
   dev->dummy_dma_page_physical_address);

 kthread_stop(dev->io_thread);
error5:
 iounmap(dev->mmio);
error4:
 pci_release_regions(pdev);
error3:
 pci_disable_device(pdev);
error2:
 memstick_free_host(host);
error1:
 return error;
}
