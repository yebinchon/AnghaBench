
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mx1_camera_dev {scalar_t__ base; int clk; TYPE_2__* icd; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 scalar_t__ CSICR1 ;
 unsigned int CSICR1_EN ;
 unsigned int CSICR1_FCC ;
 unsigned int CSICR1_GCLK_MODE ;
 unsigned int CSICR1_MCLKDIV (int ) ;
 unsigned int CSICR1_MCLKEN ;
 unsigned int CSICR1_RXFF_LEVEL (int) ;
 int __raw_writel (unsigned int,scalar_t__) ;
 int clk_enable (int ) ;
 int dev_dbg (int ,char*) ;
 int mclk_get_divisor (struct mx1_camera_dev*) ;

__attribute__((used)) static void mx1_camera_activate(struct mx1_camera_dev *pcdev)
{
 unsigned int csicr1 = CSICR1_EN;

 dev_dbg(pcdev->icd->dev.parent, "Activate device\n");

 clk_enable(pcdev->clk);


 __raw_writel(csicr1, pcdev->base + CSICR1);

 csicr1 |= CSICR1_MCLKEN | CSICR1_FCC | CSICR1_GCLK_MODE;
 csicr1 |= CSICR1_MCLKDIV(mclk_get_divisor(pcdev));
 csicr1 |= CSICR1_RXFF_LEVEL(2);

 __raw_writel(csicr1, pcdev->base + CSICR1);
}
