
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tape_device {int cdev_id; } ;
struct TYPE_3__ {int dstat; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct irb {TYPE_2__ scsw; } ;


 int DBF_EVENT (int,char*,...) ;
 int TAPE_IO_SUCCESS ;
 int TO_MSEN ;
 int tape_34xx_delete_sbid_from (struct tape_device*,int ) ;
 int tape_34xx_schedule_work (struct tape_device*,int ) ;
 int tape_dump_sense_dbf (struct tape_device*,int *,struct irb*) ;

__attribute__((used)) static int
tape_34xx_unsolicited_irq(struct tape_device *device, struct irb *irb)
{
 if (irb->scsw.cmd.dstat == 0x85) {

  DBF_EVENT(6, "xuud med\n");
  tape_34xx_delete_sbid_from(device, 0);
  tape_34xx_schedule_work(device, TO_MSEN);
 } else {
  DBF_EVENT(3, "unsol.irq! dev end: %08x\n", device->cdev_id);
  tape_dump_sense_dbf(device, ((void*)0), irb);
 }
 return TAPE_IO_SUCCESS;
}
