
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_timing {int nrd_recover; int nrd_pulse; int nrd_setup; int read_cycle; } ;
struct smc_config {int nrd_setup; int nrd_pulse; int read_cycle; int ncs_read_setup; int ncs_read_pulse; int write_cycle; int nwe_setup; int nwe_pulse; int ncs_write_setup; int ncs_write_pulse; } ;
struct device {int dummy; } ;
struct ata_timing {int rec8b; int act8b; int setup; int cyc8b; } ;
struct at32_ide_info {int cs; struct smc_config smc; } ;


 int dev_dbg (struct device*,char*,int,int,int,int,...) ;
 int memset (struct smc_timing*,int ,int) ;
 int smc_set_configuration (int ,struct smc_config*) ;
 int smc_set_timing (struct smc_config*,struct smc_timing*) ;

__attribute__((used)) static int pata_at32_setup_timing(struct device *dev,
      struct at32_ide_info *info,
      const struct ata_timing *ata)
{
 struct smc_config *smc = &info->smc;
 struct smc_timing timing;

 int active;
 int recover;

 memset(&timing, 0, sizeof(struct smc_timing));


 timing.read_cycle = ata->cyc8b;


 timing.nrd_setup = ata->setup;
 timing.nrd_pulse = ata->act8b;
 timing.nrd_recover = ata->rec8b;


 smc_set_timing(smc, &timing);


 smc->nrd_setup = smc->nrd_setup + 1;

 active = smc->nrd_setup + smc->nrd_pulse;
 recover = smc->read_cycle - active;


 if (recover < 2)
   smc->read_cycle = active + 2;


 smc->ncs_read_setup = 1;
 smc->ncs_read_pulse = smc->read_cycle - 2;


 smc->write_cycle = smc->read_cycle;
 smc->nwe_setup = smc->nrd_setup;
 smc->nwe_pulse = smc->nrd_pulse;
 smc->ncs_write_setup = smc->ncs_read_setup;
 smc->ncs_write_pulse = smc->ncs_read_pulse;


 dev_dbg(dev, "ATA: C=%d S=%d P=%d R=%d\n",
  ata->cyc8b, ata->setup, ata->act8b, ata->rec8b);

 dev_dbg(dev, "SMC: C=%d S=%d P=%d NS=%d NP=%d\n",
  smc->read_cycle, smc->nrd_setup, smc->nrd_pulse,
  smc->ncs_read_setup, smc->ncs_read_pulse);


 return smc_set_configuration(info->cs, smc);
}
