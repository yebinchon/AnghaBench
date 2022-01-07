
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smc_timing {scalar_t__ ncs_read_setup; scalar_t__ nrd_setup; scalar_t__ ncs_write_setup; scalar_t__ nwe_setup; scalar_t__ ncs_read_pulse; scalar_t__ nrd_pulse; scalar_t__ ncs_write_pulse; scalar_t__ nwe_pulse; scalar_t__ read_cycle; scalar_t__ write_cycle; scalar_t__ ncs_read_recover; scalar_t__ nrd_recover; scalar_t__ ncs_write_recover; scalar_t__ nwe_recover; } ;
struct smc_config {int ncs_read_setup; int nrd_setup; int ncs_write_setup; int nwe_setup; int ncs_read_pulse; int nrd_pulse; int ncs_write_pulse; int nwe_pulse; int read_cycle; int write_cycle; } ;
struct TYPE_2__ {int mck; } ;


 int clk_get_rate (int ) ;
 TYPE_1__* hsmc ;
 void* ns2cyc (scalar_t__) ;

void smc_set_timing(struct smc_config *config,
      const struct smc_timing *timing)
{
 int recover;
 int cycle;

 unsigned long mul;


 config->ncs_read_setup = 0;
 config->nrd_setup = 0;
 config->ncs_write_setup = 0;
 config->nwe_setup = 0;
 config->ncs_read_pulse = 0;
 config->nrd_pulse = 0;
 config->ncs_write_pulse = 0;
 config->nwe_pulse = 0;
 config->read_cycle = 0;
 config->write_cycle = 0;






 mul = (clk_get_rate(hsmc->mck) / 10000) << 16;
 mul /= 100000;



 if (timing->ncs_read_setup > 0)
  config->ncs_read_setup = ((((timing->ncs_read_setup) * mul) + 65535) >> 16);

 if (timing->nrd_setup > 0)
  config->nrd_setup = ((((timing->nrd_setup) * mul) + 65535) >> 16);

 if (timing->ncs_write_setup > 0)
  config->ncs_write_setup = ((((timing->ncs_write_setup) * mul) + 65535) >> 16);

 if (timing->nwe_setup > 0)
  config->nwe_setup = ((((timing->nwe_setup) * mul) + 65535) >> 16);

 if (timing->ncs_read_pulse > 0)
  config->ncs_read_pulse = ((((timing->ncs_read_pulse) * mul) + 65535) >> 16);

 if (timing->nrd_pulse > 0)
  config->nrd_pulse = ((((timing->nrd_pulse) * mul) + 65535) >> 16);

 if (timing->ncs_write_pulse > 0)
  config->ncs_write_pulse = ((((timing->ncs_write_pulse) * mul) + 65535) >> 16);

 if (timing->nwe_pulse > 0)
  config->nwe_pulse = ((((timing->nwe_pulse) * mul) + 65535) >> 16);

 if (timing->read_cycle > 0)
  config->read_cycle = ((((timing->read_cycle) * mul) + 65535) >> 16);

 if (timing->write_cycle > 0)
  config->write_cycle = ((((timing->write_cycle) * mul) + 65535) >> 16);


 if (timing->ncs_read_recover > 0)
  recover = ((((timing->ncs_read_recover) * mul) + 65535) >> 16);
 else
  recover = 1;

 cycle = config->ncs_read_setup + config->ncs_read_pulse + recover;

 if (config->read_cycle < cycle)
  config->read_cycle = cycle;


 if (timing->nrd_recover > 0)
  recover = ((((timing->nrd_recover) * mul) + 65535) >> 16);
 else
  recover = 1;

 cycle = config->nrd_setup + config->nrd_pulse + recover;

 if (config->read_cycle < cycle)
  config->read_cycle = cycle;


 if (timing->ncs_write_recover > 0)
  recover = ((((timing->ncs_write_recover) * mul) + 65535) >> 16);
 else
  recover = 1;

 cycle = config->ncs_write_setup + config->ncs_write_pulse + recover;

 if (config->write_cycle < cycle)
  config->write_cycle = cycle;


 if (timing->nwe_recover > 0)
  recover = ((((timing->nwe_recover) * mul) + 65535) >> 16);
 else
  recover = 1;

 cycle = config->nwe_setup + config->nwe_pulse + recover;

 if (config->write_cycle < cycle)
  config->write_cycle = cycle;
}
