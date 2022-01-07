
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_2__ {int layout; } ;



 TYPE_1__* board (struct comedi_device*) ;
 int select_master_clock_4020 (struct comedi_device*,struct comedi_cmd const*) ;

__attribute__((used)) static void select_master_clock(struct comedi_device *dev,
    const struct comedi_cmd *cmd)
{
 switch (board(dev)->layout) {
 case 128:
  select_master_clock_4020(dev, cmd);
  break;
 default:
  break;
 }
}
