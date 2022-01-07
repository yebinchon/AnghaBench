
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ layout; } ;


 scalar_t__ LAYOUT_4020 ;
 TYPE_1__* board (struct comedi_device const*) ;

__attribute__((used)) static unsigned int hw_revision(const struct comedi_device *dev,
    uint16_t hw_status_bits)
{
 if (board(dev)->layout == LAYOUT_4020)
  return (hw_status_bits >> 13) & 0x7;

 return (hw_status_bits >> 12) & 0xf;
}
