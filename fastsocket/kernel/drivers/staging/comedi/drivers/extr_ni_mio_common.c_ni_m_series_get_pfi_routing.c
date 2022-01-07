
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int * pfi_output_select_reg; } ;


 int MSeries_PFI_Output_Select_Source (unsigned int,int ) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static unsigned ni_m_series_get_pfi_routing(struct comedi_device *dev,
         unsigned chan)
{
 const unsigned array_offset = chan / 3;
 return MSeries_PFI_Output_Select_Source(chan,
      devpriv->
      pfi_output_select_reg
      [array_offset]);
}
