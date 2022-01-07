
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cstat; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct irb {TYPE_2__ scsw; } ;
struct ccw_device {int dummy; } ;
typedef enum io_status { ____Placeholder_io_status } io_status ;


 int IO_DONE ;
 int IO_STATUS_ERROR ;

__attribute__((used)) static enum io_status nop_filter(struct ccw_device *cdev, void *data,
     struct irb *irb, enum io_status status)
{

 if (status == IO_STATUS_ERROR && irb->scsw.cmd.cstat == 0)
  return IO_DONE;
 return status;
}
