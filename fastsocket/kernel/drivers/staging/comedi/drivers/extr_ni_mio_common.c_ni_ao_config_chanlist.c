
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int reg_type; } ;


 TYPE_1__ boardtype ;
 int ni_m_series_ao_config_chanlist (struct comedi_device*,struct comedi_subdevice*,unsigned int*,unsigned int,int) ;
 int ni_old_ao_config_chanlist (struct comedi_device*,struct comedi_subdevice*,unsigned int*,unsigned int) ;
 int ni_reg_m_series_mask ;

__attribute__((used)) static int ni_ao_config_chanlist(struct comedi_device *dev,
     struct comedi_subdevice *s,
     unsigned int chanspec[], unsigned int n_chans,
     int timed)
{
 if (boardtype.reg_type & ni_reg_m_series_mask)
  return ni_m_series_ao_config_chanlist(dev, s, chanspec, n_chans,
            timed);
 else
  return ni_old_ao_config_chanlist(dev, s, chanspec, n_chans);
}
