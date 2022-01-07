
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urdev {int io_done; int io_request_rc; } ;
struct TYPE_4__ {int dstat; int count; int cstat; } ;
struct TYPE_3__ {TYPE_2__ cmd; } ;
struct irb {TYPE_1__ scsw; } ;
struct ccw_device {int dev; } ;


 int BUG_ON (int) ;
 int DEV_STAT_CHN_END ;
 int DEV_STAT_DEV_END ;
 int EIO ;
 scalar_t__ IS_ERR (struct irb*) ;
 int PTR_ERR (struct irb*) ;
 int TRACE (char*,...) ;
 int complete (int ) ;
 struct urdev* dev_get_drvdata (int *) ;

__attribute__((used)) static void ur_int_handler(struct ccw_device *cdev, unsigned long intparm,
      struct irb *irb)
{
 struct urdev *urd;

 TRACE("ur_int_handler: intparm=0x%lx cstat=%02x dstat=%02x res=%u\n",
       intparm, irb->scsw.cmd.cstat, irb->scsw.cmd.dstat,
       irb->scsw.cmd.count);

 if (!intparm) {
  TRACE("ur_int_handler: unsolicited interrupt\n");
  return;
 }
 urd = dev_get_drvdata(&cdev->dev);
 BUG_ON(!urd);

 if (IS_ERR(irb))
  urd->io_request_rc = PTR_ERR(irb);
 else if (irb->scsw.cmd.dstat == (DEV_STAT_CHN_END | DEV_STAT_DEV_END))
  urd->io_request_rc = 0;
 else
  urd->io_request_rc = -EIO;

 complete(urd->io_done);
}
