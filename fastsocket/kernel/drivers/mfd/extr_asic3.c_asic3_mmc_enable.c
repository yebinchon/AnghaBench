
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct asic3 {int * clocks; } ;


 size_t ASIC3_CLOCK_EX0 ;
 size_t ASIC3_CLOCK_EX1 ;
 size_t ASIC3_CLOCK_SD_BUS ;
 size_t ASIC3_CLOCK_SD_HOST ;
 int ASIC3_EXTCF_SD_MEM_ENABLE ;
 int ASIC3_OFFSET (int ,int ) ;
 int ASIC3_SDHWCTRL_LEVCD ;
 int ASIC3_SDHWCTRL_LEVWP ;
 int ASIC3_SDHWCTRL_PCLR ;
 int ASIC3_SDHWCTRL_SDPWR ;
 int ASIC3_SDHWCTRL_SUSPEND ;
 int CLOCK ;
 int CLOCK_SEL_CX ;
 int CLOCK_SEL_SD_HCLK_SEL ;
 int EXTCF ;
 int SDCONF ;
 int SDHWCTRL ;
 int SEL ;
 int SELECT ;
 int asic3_clk_enable (struct asic3*,int *) ;
 int asic3_set_register (struct asic3*,int ,int ,int) ;
 int asic3_write_register (struct asic3*,int ,int) ;
 struct asic3* dev_get_drvdata (int ) ;
 int msleep (int) ;

__attribute__((used)) static int asic3_mmc_enable(struct platform_device *pdev)
{
 struct asic3 *asic = dev_get_drvdata(pdev->dev.parent);


 asic3_set_register(asic, ASIC3_OFFSET(SDHWCTRL, SDCONF),
      ASIC3_SDHWCTRL_LEVCD, 1);
 asic3_set_register(asic, ASIC3_OFFSET(SDHWCTRL, SDCONF),
      ASIC3_SDHWCTRL_LEVWP, 1);
 asic3_set_register(asic, ASIC3_OFFSET(SDHWCTRL, SDCONF),
      ASIC3_SDHWCTRL_SUSPEND, 0);
 asic3_set_register(asic, ASIC3_OFFSET(SDHWCTRL, SDCONF),
      ASIC3_SDHWCTRL_PCLR, 0);

 asic3_clk_enable(asic, &asic->clocks[ASIC3_CLOCK_EX0]);



 asic3_clk_enable(asic, &asic->clocks[ASIC3_CLOCK_EX1]);
 msleep(1);


 asic3_write_register(asic, ASIC3_OFFSET(CLOCK, SEL),
  CLOCK_SEL_CX | CLOCK_SEL_SD_HCLK_SEL);

 asic3_clk_enable(asic, &asic->clocks[ASIC3_CLOCK_SD_HOST]);
 asic3_clk_enable(asic, &asic->clocks[ASIC3_CLOCK_SD_BUS]);
 msleep(1);

 asic3_set_register(asic, ASIC3_OFFSET(EXTCF, SELECT),
      ASIC3_EXTCF_SD_MEM_ENABLE, 1);


 asic3_set_register(asic, ASIC3_OFFSET(SDHWCTRL, SDCONF),
      ASIC3_SDHWCTRL_SDPWR, 1);

 return 0;
}
