
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ aimode; int ai_cmd2; } ;
struct TYPE_3__ {int events; } ;


 scalar_t__ AIMODE_SCAN ;
 int AI_End_On_End_Of_Scan ;
 int COMEDI_CB_EOS ;
 TYPE_2__* devpriv ;
 int ni_handle_fifo_dregs (struct comedi_device*) ;
 int ni_sync_ai_dma (struct comedi_device*) ;
 int shutdown_ai_command (struct comedi_device*) ;
 int udelay (int) ;

__attribute__((used)) static void ni_handle_eos(struct comedi_device *dev, struct comedi_subdevice *s)
{
 if (devpriv->aimode == AIMODE_SCAN) {
  ni_handle_fifo_dregs(dev);
  s->async->events |= COMEDI_CB_EOS;

 }

 if ((devpriv->ai_cmd2 & AI_End_On_End_Of_Scan)) {
  shutdown_ai_command(dev);
 }
}
