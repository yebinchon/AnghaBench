
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct device {int dummy; } ;
struct b3dfg_dev {int transmission_enabled; int cur_dma_frame_idx; int buffer_lock; scalar_t__ triplet_ready; int triplets_dropped_lock; scalar_t__ triplets_dropped; TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;


 int B3D_REG_HW_CTRL ;
 int B3D_REG_WAND_STS ;
 int EINVAL ;
 int PCI_COMMAND ;
 int PCI_COMMAND_MASTER ;
 int b3dfg_read32 (struct b3dfg_dev*,int ) ;
 int b3dfg_write32 (struct b3dfg_dev*,int ,int) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int pci_read_config_word (TYPE_1__*,int ,int*) ;
 int pci_write_config_word (TYPE_1__*,int ,int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int enable_transmission(struct b3dfg_dev *fgdev)
{
 u16 command;
 unsigned long flags;
 struct device *dev = &fgdev->pdev->dev;

 dev_dbg(dev, "enable transmission\n");


 if (!b3dfg_read32(fgdev, B3D_REG_WAND_STS)) {
  dev_dbg(dev, "cannot start transmission without wand\n");
  return -EINVAL;
 }





 pci_read_config_word(fgdev->pdev, PCI_COMMAND, &command);
 if (!(command & PCI_COMMAND_MASTER)) {
  dev_err(dev, "not a bus master, force-enabling\n");
  pci_write_config_word(fgdev->pdev, PCI_COMMAND,
   command | PCI_COMMAND_MASTER);
 }

 spin_lock_irqsave(&fgdev->buffer_lock, flags);


 if (fgdev->transmission_enabled) {
  spin_unlock_irqrestore(&fgdev->buffer_lock, flags);
  goto out;
 }

 spin_lock(&fgdev->triplets_dropped_lock);
 fgdev->triplets_dropped = 0;
 spin_unlock(&fgdev->triplets_dropped_lock);

 fgdev->triplet_ready = 0;
 fgdev->cur_dma_frame_idx = -1;
 fgdev->transmission_enabled = 1;

 spin_unlock_irqrestore(&fgdev->buffer_lock, flags);


 b3dfg_write32(fgdev, B3D_REG_HW_CTRL, 0x03);

out:
 return 0;
}
