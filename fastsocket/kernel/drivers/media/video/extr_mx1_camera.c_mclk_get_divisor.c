
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mx1_camera_dev {unsigned int mclk; TYPE_2__* icd; int clk; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 unsigned long clk_get_rate (int ) ;
 int dev_dbg (int ,char*,unsigned long,unsigned int,unsigned long) ;

__attribute__((used)) static int mclk_get_divisor(struct mx1_camera_dev *pcdev)
{
 unsigned int mclk = pcdev->mclk;
 unsigned long div;
 unsigned long lcdclk;

 lcdclk = clk_get_rate(pcdev->clk);



 div = (lcdclk + 2 * mclk - 1) / (2 * mclk) - 1;

 dev_dbg(pcdev->icd->dev.parent,
  "System clock %lukHz, target freq %dkHz, divisor %lu\n",
  lcdclk / 1000, mclk / 1000, div);

 return div;
}
