
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psif {int pclk; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int PSIF_PSR_PRSCV_SIZE ;
 int PSR ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 unsigned long clk_get_rate (int ) ;
 int dev_dbg (int *,char*) ;
 int psif_writel (struct psif*,int ,unsigned long) ;

__attribute__((used)) static void psif_set_prescaler(struct psif *psif)
{
 unsigned long prscv;
 unsigned long rate = clk_get_rate(psif->pclk);


 prscv = 100 * (rate / 1000000UL);

 if (prscv > ((1<<PSIF_PSR_PRSCV_SIZE) - 1)) {
  prscv = (1<<PSIF_PSR_PRSCV_SIZE) - 1;
  dev_dbg(&psif->pdev->dev, "pclk too fast, "
    "prescaler set to max\n");
 }

 clk_enable(psif->pclk);
 psif_writel(psif, PSR, prscv);
 clk_disable(psif->pclk);
}
