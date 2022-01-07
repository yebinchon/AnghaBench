
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


 int DBF_EVENT (int,char*,int ) ;
 int DEV_STAT_ATTENTION ;
 int DEV_STAT_CHN_END ;
 int TAPE_IO_PENDING ;
 int TAPE_IO_SUCCESS ;
 int TO_MSEN ;
 int TO_READ_ATTMSG ;
 int tape_3590_schedule_work (struct tape_device*,int ) ;
 int tape_dump_sense_dbf (struct tape_device*,int *,struct irb*) ;

__attribute__((used)) static int
tape_3590_unsolicited_irq(struct tape_device *device, struct irb *irb)
{
 if (irb->scsw.cmd.dstat == DEV_STAT_CHN_END)

  return TAPE_IO_PENDING;
 else if (irb->scsw.cmd.dstat == 0x85)

  DBF_EVENT(3, "unsol.irq! tape ready: %08x\n", device->cdev_id);
 else if (irb->scsw.cmd.dstat & DEV_STAT_ATTENTION) {
  tape_3590_schedule_work(device, TO_READ_ATTMSG);
 } else {
  DBF_EVENT(3, "unsol.irq! dev end: %08x\n", device->cdev_id);
  tape_dump_sense_dbf(device, ((void*)0), irb);
 }

 tape_3590_schedule_work(device, TO_MSEN);
 return TAPE_IO_SUCCESS;
}
