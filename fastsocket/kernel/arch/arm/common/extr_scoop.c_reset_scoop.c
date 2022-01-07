
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scoop_dev {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ SCOOP_CCR ;
 scalar_t__ SCOOP_CDR ;
 scalar_t__ SCOOP_IMR ;
 scalar_t__ SCOOP_IRM ;
 scalar_t__ SCOOP_ISR ;
 scalar_t__ SCOOP_MCR ;
 struct scoop_dev* dev_get_drvdata (struct device*) ;
 int iowrite16 (int,scalar_t__) ;

void reset_scoop(struct device *dev)
{
 struct scoop_dev *sdev = dev_get_drvdata(dev);

 iowrite16(0x0100, sdev->base + SCOOP_MCR);
 iowrite16(0x0000, sdev->base + SCOOP_CDR);
 iowrite16(0x0000, sdev->base + SCOOP_CCR);
 iowrite16(0x0000, sdev->base + SCOOP_IMR);
 iowrite16(0x00FF, sdev->base + SCOOP_IRM);
 iowrite16(0x0000, sdev->base + SCOOP_ISR);
 iowrite16(0x0000, sdev->base + SCOOP_IRM);
}
