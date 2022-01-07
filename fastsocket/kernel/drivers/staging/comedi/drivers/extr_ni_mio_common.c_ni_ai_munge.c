
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int subdev_flags; struct comedi_async* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_3__ {unsigned int chanlist_len; } ;
struct comedi_async {TYPE_1__ cmd; } ;
struct TYPE_4__ {scalar_t__* ai_offset; } ;


 int SDF_LSAMPL ;
 unsigned int bytes_per_sample (struct comedi_subdevice*) ;
 TYPE_2__* devpriv ;
 short le16_to_cpu (short) ;
 unsigned int le32_to_cpu (unsigned int) ;

__attribute__((used)) static void ni_ai_munge(struct comedi_device *dev, struct comedi_subdevice *s,
   void *data, unsigned int num_bytes,
   unsigned int chan_index)
{
 struct comedi_async *async = s->async;
 unsigned int i;
 unsigned int length = num_bytes / bytes_per_sample(s);
 short *array = data;
 unsigned int *larray = data;
 for (i = 0; i < length; i++) {






  if (s->subdev_flags & SDF_LSAMPL)
   larray[i] += devpriv->ai_offset[chan_index];
  else
   array[i] += devpriv->ai_offset[chan_index];
  chan_index++;
  chan_index %= async->cmd.chanlist_len;
 }
}
