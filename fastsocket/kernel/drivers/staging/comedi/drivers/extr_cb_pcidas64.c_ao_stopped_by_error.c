
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct comedi_cmd {scalar_t__ stop_src; } ;
struct TYPE_2__ {scalar_t__ ao_count; } ;


 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_NONE ;
 scalar_t__ last_ao_dma_load_completed (struct comedi_device*) ;
 TYPE_1__* priv (struct comedi_device*) ;

__attribute__((used)) static int ao_stopped_by_error(struct comedi_device *dev,
          const struct comedi_cmd *cmd)
{
 if (cmd->stop_src == TRIG_NONE)
  return 1;
 if (cmd->stop_src == TRIG_COUNT) {
  if (priv(dev)->ao_count)
   return 1;
  if (last_ao_dma_load_completed(dev) == 0)
   return 1;
 }
 return 0;
}
