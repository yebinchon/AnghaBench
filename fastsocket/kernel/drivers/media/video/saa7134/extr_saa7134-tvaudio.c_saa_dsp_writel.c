
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7134_dev {int dummy; } ;


 int SAA7135_DSP_RWSTATE_WRR ;
 int d2printk (char*,int,int ) ;
 int saa_dsp_wait_bit (struct saa7134_dev*,int ) ;
 int saa_writel (int,int ) ;

int saa_dsp_writel(struct saa7134_dev *dev, int reg, u32 value)
{
 int err;

 d2printk("dsp write reg 0x%x = 0x%06x\n",reg<<2,value);
 err = saa_dsp_wait_bit(dev,SAA7135_DSP_RWSTATE_WRR);
 if (err < 0)
  return err;
 saa_writel(reg,value);
 err = saa_dsp_wait_bit(dev,SAA7135_DSP_RWSTATE_WRR);
 if (err < 0)
  return err;
 return 0;
}
