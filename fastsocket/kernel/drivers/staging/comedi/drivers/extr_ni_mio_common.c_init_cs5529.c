
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 unsigned int CSCFG_PORT_MODE ;
 unsigned int CSCFG_SELF_CAL_OFFSET ;
 unsigned int CSCFG_SELF_CAL_OFFSET_GAIN ;
 unsigned int CSCFG_WORD_RATE_2180_CYCLES ;
 int CSCMD_CONFIG_REGISTER ;
 int CSCMD_GAIN_REGISTER ;
 int CSCMD_OFFSET_REGISTER ;
 int comedi_error (struct comedi_device*,char*) ;
 int cs5529_config_read (struct comedi_device*,int ) ;
 int cs5529_config_write (struct comedi_device*,unsigned int,int ) ;
 int cs5529_do_conversion (struct comedi_device*,int *) ;
 scalar_t__ cs5529_wait_for_idle (struct comedi_device*) ;
 int printk (char*,int ) ;

__attribute__((used)) static int init_cs5529(struct comedi_device *dev)
{
 unsigned int config_bits =
     CSCFG_PORT_MODE | CSCFG_WORD_RATE_2180_CYCLES;



 cs5529_config_write(dev, config_bits | CSCFG_SELF_CAL_OFFSET_GAIN,
       CSCMD_CONFIG_REGISTER);

 cs5529_do_conversion(dev, ((void*)0));
 return 0;
}
