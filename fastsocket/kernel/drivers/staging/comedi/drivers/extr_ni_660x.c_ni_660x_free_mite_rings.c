
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int n_chips; } ;
struct TYPE_3__ {int ** mite_rings; } ;


 TYPE_2__* board (struct comedi_device*) ;
 unsigned int counters_per_chip ;
 int mite_free_ring (int ) ;
 TYPE_1__* private (struct comedi_device*) ;

__attribute__((used)) static void ni_660x_free_mite_rings(struct comedi_device *dev)
{
 unsigned i;
 unsigned j;

 for (i = 0; i < board(dev)->n_chips; ++i) {
  for (j = 0; j < counters_per_chip; ++j) {
   mite_free_ring(private(dev)->mite_rings[i][j]);
  }
 }
}
