
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_adc_client {int channel; int is_ts; int (* select_cb ) (struct s3c_adc_client*,int) ;} ;
struct adc_device {scalar_t__ regs; } ;


 scalar_t__ S3C2410_ADCCON ;
 unsigned int S3C2410_ADCCON_MUXMASK ;
 unsigned int S3C2410_ADCCON_SELMUX (int ) ;
 unsigned int S3C2410_ADCCON_STARTMASK ;
 unsigned int S3C2410_ADCCON_STDBM ;
 unsigned int readl (scalar_t__) ;
 int stub1 (struct s3c_adc_client*,int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void s3c_adc_select(struct adc_device *adc,
      struct s3c_adc_client *client)
{
 unsigned con = readl(adc->regs + S3C2410_ADCCON);

 client->select_cb(client, 1);

 con &= ~S3C2410_ADCCON_MUXMASK;
 con &= ~S3C2410_ADCCON_STDBM;
 con &= ~S3C2410_ADCCON_STARTMASK;

 if (!client->is_ts)
  con |= S3C2410_ADCCON_SELMUX(client->channel);

 writel(con, adc->regs + S3C2410_ADCCON);
}
