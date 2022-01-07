
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adc_device {scalar_t__ regs; } ;


 scalar_t__ S3C2410_ADCCON ;
 unsigned int S3C2410_ADCCON_ENABLE_START ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void s3c_adc_convert(struct adc_device *adc)
{
 unsigned con = readl(adc->regs + S3C2410_ADCCON);

 con |= S3C2410_ADCCON_ENABLE_START;
 writel(con, adc->regs + S3C2410_ADCCON);
}
