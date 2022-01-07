
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int reg_type; } ;


 TYPE_1__ boardtype ;
 int ni_reg_m_series_mask ;

__attribute__((used)) static inline unsigned num_configurable_rtsi_channels(struct comedi_device *dev)
{
 if (boardtype.reg_type & ni_reg_m_series_mask)
  return 8;
 else
  return 7;
}
