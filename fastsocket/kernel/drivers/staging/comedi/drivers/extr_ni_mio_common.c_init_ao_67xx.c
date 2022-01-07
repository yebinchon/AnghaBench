
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int n_chan; } ;
struct comedi_device {int dummy; } ;


 int AO_Channel (int) ;
 int AO_Configuration_2_67xx ;
 int AO_Later_Single_Point_Updates ;
 int ao_win_out (int,int ) ;
 int ni_ao_win_outw (struct comedi_device*,int,int ) ;

__attribute__((used)) static void init_ao_67xx(struct comedi_device *dev, struct comedi_subdevice *s)
{
 int i;

 for (i = 0; i < s->n_chan; i++) {
  ni_ao_win_outw(dev, AO_Channel(i) | 0x0,
          AO_Configuration_2_67xx);
 }
 ao_win_out(0x0, AO_Later_Single_Point_Updates);
}
