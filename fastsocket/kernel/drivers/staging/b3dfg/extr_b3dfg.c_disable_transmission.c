
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct b3dfg_dev {int buffer_waitqueue; int buffer_lock; scalar_t__ transmission_enabled; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int B3D_REG_DMA_STS ;
 int B3D_REG_HW_CTRL ;
 int b3dfg_read32 (struct b3dfg_dev*,int ) ;
 int b3dfg_write32 (struct b3dfg_dev*,int ,int ) ;
 int dequeue_all_buffers (struct b3dfg_dev*) ;
 int dev_dbg (struct device*,char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void disable_transmission(struct b3dfg_dev *fgdev)
{
 struct device *dev = &fgdev->pdev->dev;
 unsigned long flags;
 u32 tmp;

 dev_dbg(dev, "disable transmission\n");


 spin_lock_irqsave(&fgdev->buffer_lock, flags);
 fgdev->transmission_enabled = 0;

 b3dfg_write32(fgdev, B3D_REG_HW_CTRL, 0);




 tmp = b3dfg_read32(fgdev, B3D_REG_DMA_STS);
 dev_dbg(dev, "DMA_STS reads %x after TX stopped\n", tmp);

 dequeue_all_buffers(fgdev);
 spin_unlock_irqrestore(&fgdev->buffer_lock, flags);

 wake_up_interruptible(&fgdev->buffer_waitqueue);
}
