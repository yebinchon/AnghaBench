
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {int n_chips; } ;


 TYPE_1__* board (struct comedi_device*) ;
 int counters_per_chip ;

__attribute__((used)) static inline unsigned ni_660x_num_counters(struct comedi_device *dev)
{
 return board(dev)->n_chips * counters_per_chip;
}
