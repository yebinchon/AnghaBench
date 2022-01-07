
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ layout; } ;


 unsigned short ADC_SE_DIFF_BIT ;
 scalar_t__ LAYOUT_60XX ;
 scalar_t__ LAYOUT_64XX ;
 TYPE_1__* board (struct comedi_device*) ;

__attribute__((used)) static inline unsigned short se_diff_bit_6xxx(struct comedi_device *dev,
           int use_differential)
{
 if ((board(dev)->layout == LAYOUT_64XX && !use_differential) ||
     (board(dev)->layout == LAYOUT_60XX && use_differential))
  return ADC_SE_DIFF_BIT;
 else
  return 0;
}
