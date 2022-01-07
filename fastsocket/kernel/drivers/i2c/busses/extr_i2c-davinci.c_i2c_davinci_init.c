
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct davinci_i2c_platform_data {int bus_freq; int bus_delay; } ;
struct davinci_i2c_dev {TYPE_1__* dev; int clk; } ;
struct TYPE_2__ {struct davinci_i2c_platform_data* platform_data; } ;


 int DAVINCI_I2C_CLKH_REG ;
 int DAVINCI_I2C_CLKL_REG ;
 int DAVINCI_I2C_IMR_REG ;
 int DAVINCI_I2C_MDR_IRS ;
 int DAVINCI_I2C_MDR_REG ;
 int DAVINCI_I2C_OAR_REG ;
 int DAVINCI_I2C_PSC_REG ;
 int I2C_DAVINCI_INTR_ALL ;
 int MOD_REG_BIT (int,int ,int) ;
 int clk_get_rate (int ) ;
 struct davinci_i2c_platform_data davinci_i2c_platform_data_default ;
 int davinci_i2c_read_reg (struct davinci_i2c_dev*,int ) ;
 int davinci_i2c_write_reg (struct davinci_i2c_dev*,int ,int) ;
 int dev_dbg (TYPE_1__*,char*,int,...) ;

__attribute__((used)) static int i2c_davinci_init(struct davinci_i2c_dev *dev)
{
 struct davinci_i2c_platform_data *pdata = dev->dev->platform_data;
 u16 psc;
 u32 clk;
 u32 d;
 u32 clkh;
 u32 clkl;
 u32 input_clock = clk_get_rate(dev->clk);
 u16 w;

 if (!pdata)
  pdata = &davinci_i2c_platform_data_default;


 w = davinci_i2c_read_reg(dev, DAVINCI_I2C_MDR_REG);
 MOD_REG_BIT(w, DAVINCI_I2C_MDR_IRS, 0);
 davinci_i2c_write_reg(dev, DAVINCI_I2C_MDR_REG, w);
 psc = (input_clock / 7000000) - 1;
 if ((input_clock / (psc + 1)) > 12000000)
  psc++;
 d = (psc >= 2) ? 5 : 7 - psc;

 clk = ((input_clock / (psc + 1)) / (pdata->bus_freq * 1000)) - (d << 1);
 clkh = clk >> 1;
 clkl = clk - clkh;

 davinci_i2c_write_reg(dev, DAVINCI_I2C_PSC_REG, psc);
 davinci_i2c_write_reg(dev, DAVINCI_I2C_CLKH_REG, clkh);
 davinci_i2c_write_reg(dev, DAVINCI_I2C_CLKL_REG, clkl);




 davinci_i2c_write_reg(dev, DAVINCI_I2C_OAR_REG, 0x08);

 dev_dbg(dev->dev, "input_clock = %d, CLK = %d\n", input_clock, clk);
 dev_dbg(dev->dev, "PSC  = %d\n",
  davinci_i2c_read_reg(dev, DAVINCI_I2C_PSC_REG));
 dev_dbg(dev->dev, "CLKL = %d\n",
  davinci_i2c_read_reg(dev, DAVINCI_I2C_CLKL_REG));
 dev_dbg(dev->dev, "CLKH = %d\n",
  davinci_i2c_read_reg(dev, DAVINCI_I2C_CLKH_REG));
 dev_dbg(dev->dev, "bus_freq = %dkHz, bus_delay = %d\n",
  pdata->bus_freq, pdata->bus_delay);


 w = davinci_i2c_read_reg(dev, DAVINCI_I2C_MDR_REG);
 MOD_REG_BIT(w, DAVINCI_I2C_MDR_IRS, 1);
 davinci_i2c_write_reg(dev, DAVINCI_I2C_MDR_REG, w);


 davinci_i2c_write_reg(dev, DAVINCI_I2C_IMR_REG, I2C_DAVINCI_INTR_ALL);

 return 0;
}
