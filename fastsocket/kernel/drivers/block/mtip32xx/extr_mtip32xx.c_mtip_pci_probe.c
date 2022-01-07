
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct driver_data {int online_list; int dd_flag; int remove_list; struct pci_dev* pdev; int instance; int major; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MTIP_ABAR ;
 int MTIP_DDF_INIT_DONE_BIT ;
 int MTIP_DRV_NAME ;
 int MTIP_FTL_REBUILD_MAGIC ;
 int dev_err (int *,char*) ;
 int dev_lock ;
 int dev_warn (int *,char*) ;
 int instance ;
 int kfree (struct driver_data*) ;
 struct driver_data* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mtip_block_initialize (struct driver_data*) ;
 int mtip_major ;
 int online_list ;
 int pci_disable_msi (struct pci_dev*) ;
 int pci_enable_msi (struct pci_dev*) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct driver_data*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 int pcim_iomap_regions (struct pci_dev*,int,int ) ;
 int pcim_iounmap_regions (struct pci_dev*,int) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mtip_pci_probe(struct pci_dev *pdev,
   const struct pci_device_id *ent)
{
 int rv = 0;
 struct driver_data *dd = ((void*)0);
 unsigned long flags;


 dd = kzalloc(sizeof(struct driver_data), GFP_KERNEL);
 if (dd == ((void*)0)) {
  dev_err(&pdev->dev,
   "Unable to allocate memory for driver data\n");
  return -ENOMEM;
 }


 pci_set_drvdata(pdev, dd);

 rv = pcim_enable_device(pdev);
 if (rv < 0) {
  dev_err(&pdev->dev, "Unable to enable device\n");
  goto iomap_err;
 }


 rv = pcim_iomap_regions(pdev, 1 << MTIP_ABAR, MTIP_DRV_NAME);
 if (rv < 0) {
  dev_err(&pdev->dev, "Unable to map regions\n");
  goto iomap_err;
 }

 if (!pci_set_dma_mask(pdev, DMA_BIT_MASK(64))) {
  rv = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));

  if (rv) {
   rv = pci_set_consistent_dma_mask(pdev,
      DMA_BIT_MASK(32));
   if (rv) {
    dev_warn(&pdev->dev,
     "64-bit DMA enable failed\n");
    goto setmask_err;
   }
  }
 }

 pci_set_master(pdev);
 rv = pci_enable_msi(pdev);
 if (rv) {
  dev_warn(&pdev->dev,
   "Unable to enable MSI interrupt.\n");
  goto block_initialize_err;
 }


 dd->major = mtip_major;
 dd->instance = instance;
 dd->pdev = pdev;

 INIT_LIST_HEAD(&dd->online_list);
 INIT_LIST_HEAD(&dd->remove_list);


 rv = mtip_block_initialize(dd);
 if (rv < 0) {
  dev_err(&pdev->dev,
   "Unable to initialize block layer\n");
  goto block_initialize_err;
 }





 instance++;
 if (rv != MTIP_FTL_REBUILD_MAGIC)
  set_bit(MTIP_DDF_INIT_DONE_BIT, &dd->dd_flag);
 else
  rv = 0;


 spin_lock_irqsave(&dev_lock, flags);
 list_add(&dd->online_list, &online_list);
 spin_unlock_irqrestore(&dev_lock, flags);

 goto done;

block_initialize_err:
 pci_disable_msi(pdev);

setmask_err:
 pcim_iounmap_regions(pdev, 1 << MTIP_ABAR);

iomap_err:
 kfree(dd);
 pci_set_drvdata(pdev, ((void*)0));
 return rv;
done:
 return rv;
}
