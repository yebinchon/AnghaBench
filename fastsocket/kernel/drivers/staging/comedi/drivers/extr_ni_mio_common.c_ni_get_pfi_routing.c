
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int reg_type; } ;


 TYPE_1__ boardtype ;
 int ni_m_series_get_pfi_routing (struct comedi_device*,unsigned int) ;
 int ni_old_get_pfi_routing (struct comedi_device*,unsigned int) ;
 int ni_reg_m_series_mask ;

__attribute__((used)) static unsigned ni_get_pfi_routing(struct comedi_device *dev, unsigned chan)
{
 if (boardtype.reg_type & ni_reg_m_series_mask)
  return ni_m_series_get_pfi_routing(dev, chan);
 else
  return ni_old_get_pfi_routing(dev, chan);
}
