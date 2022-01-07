
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct ErrorInfo {int CommandStatus; int ScsiStatus; } ;
struct CommandList {struct ErrorInfo* err_info; TYPE_2__* h; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*,...) ;

__attribute__((used)) static void hpsa_scsi_interpret_error(struct CommandList *cp)
{
 struct ErrorInfo *ei;
 struct device *d = &cp->h->pdev->dev;

 ei = cp->err_info;
 switch (ei->CommandStatus) {
 case 131:
  dev_warn(d, "cmd %p has completed with errors\n", cp);
  dev_warn(d, "cmd %p has SCSI Status = %x\n", cp,
    ei->ScsiStatus);
  if (ei->ScsiStatus == 0)
   dev_warn(d, "SCSI status is abnormally zero.  "
   "(probably indicates selection timeout "
   "reported incorrectly due to a known "
   "firmware bug, circa July, 2001.)\n");
  break;
 case 135:
   dev_info(d, "UNDERRUN\n");
  break;
 case 136:
  dev_warn(d, "cp %p has completed with data overrun\n", cp);
  break;
 case 133: {



  dev_warn(d, "cp %p is reported invalid (probably means "
   "target device no longer present)\n", cp);


  }
  break;
 case 132:
  dev_warn(d, "cp %p has protocol error \n", cp);
  break;
 case 134:

  dev_warn(d, "cp %p had hardware error\n", cp);
  break;
 case 137:
  dev_warn(d, "cp %p had connection lost\n", cp);
  break;
 case 139:
  dev_warn(d, "cp %p was aborted\n", cp);
  break;
 case 138:
  dev_warn(d, "cp %p reports abort failed\n", cp);
  break;
 case 128:
  dev_warn(d, "cp %p aborted due to an unsolicited abort\n", cp);
  break;
 case 130:
  dev_warn(d, "cp %p timed out\n", cp);
  break;
 case 129:
  dev_warn(d, "Command unabortable\n");
  break;
 default:
  dev_warn(d, "cp %p returned unknown status %x\n", cp,
    ei->CommandStatus);
 }
}
