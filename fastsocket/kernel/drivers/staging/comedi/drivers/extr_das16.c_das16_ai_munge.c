
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int ai_nbits; } ;


 short le16_to_cpu (short) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static void das16_ai_munge(struct comedi_device *dev,
      struct comedi_subdevice *s, void *array,
      unsigned int num_bytes,
      unsigned int start_chan_index)
{
 unsigned int i, num_samples = num_bytes / sizeof(short);
 short *data = array;

 for (i = 0; i < num_samples; i++) {
  data[i] = le16_to_cpu(data[i]);
  if (thisboard->ai_nbits == 12) {
   data[i] = (data[i] >> 4) & 0xfff;
  }
 }
}
