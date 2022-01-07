
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_iotimings {TYPE_1__* bank; } ;
struct s3c_cpufreq_config {int dummy; } ;
struct s3c2410_iobank_timing {int bankcon; } ;
struct TYPE_2__ {struct s3c2410_iobank_timing* io_2410; } ;


 int MAX_BANKS ;
 int __raw_writel (int ,int ) ;
 int bank_reg (int) ;

void s3c2410_iotiming_set(struct s3c_cpufreq_config *cfg,
     struct s3c_iotimings *iot)
{
 struct s3c2410_iobank_timing *bt;
 int bank;



 for (bank = 0; bank < MAX_BANKS; bank++) {
  bt = iot->bank[bank].io_2410;
  if (!bt)
   continue;

  __raw_writel(bt->bankcon, bank_reg(bank));
 }
}
