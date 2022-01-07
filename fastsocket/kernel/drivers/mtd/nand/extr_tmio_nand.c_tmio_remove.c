
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_nand {int ccr; int fcr; scalar_t__ irq; int mtd; } ;
struct platform_device {int dummy; } ;


 int free_irq (scalar_t__,struct tmio_nand*) ;
 int iounmap (int ) ;
 int kfree (struct tmio_nand*) ;
 int nand_release (int *) ;
 struct tmio_nand* platform_get_drvdata (struct platform_device*) ;
 int tmio_hw_stop (struct platform_device*,struct tmio_nand*) ;

__attribute__((used)) static int tmio_remove(struct platform_device *dev)
{
 struct tmio_nand *tmio = platform_get_drvdata(dev);

 nand_release(&tmio->mtd);
 if (tmio->irq)
  free_irq(tmio->irq, tmio);
 tmio_hw_stop(dev, tmio);
 iounmap(tmio->fcr);
 iounmap(tmio->ccr);
 kfree(tmio);
 return 0;
}
