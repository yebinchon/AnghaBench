
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_device {TYPE_2__* read_subdev; } ;
struct TYPE_6__ {scalar_t__ layout; } ;
struct TYPE_5__ {TYPE_1__* async; scalar_t__ busy; } ;
struct TYPE_4__ {int cmd; } ;


 scalar_t__ LAYOUT_4020 ;
 TYPE_3__* board (struct comedi_device*) ;
 scalar_t__ use_internal_queue_6xxx (int *) ;

__attribute__((used)) static inline int external_ai_queue_in_use(struct comedi_device *dev)
{
 if (dev->read_subdev->busy)
  return 0;
 if (board(dev)->layout == LAYOUT_4020)
  return 0;
 else if (use_internal_queue_6xxx(&dev->read_subdev->async->cmd))
  return 0;
 return 1;
}
