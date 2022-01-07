
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mx1_camera_dev {int clk; scalar_t__ base; TYPE_2__* icd; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 scalar_t__ CSICR1 ;
 int __raw_writel (int,scalar_t__) ;
 int clk_disable (int ) ;
 int dev_dbg (int ,char*) ;

__attribute__((used)) static void mx1_camera_deactivate(struct mx1_camera_dev *pcdev)
{
 dev_dbg(pcdev->icd->dev.parent, "Deactivate device\n");


 __raw_writel(0x00, pcdev->base + CSICR1);

 clk_disable(pcdev->clk);
}
