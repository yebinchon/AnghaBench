
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {TYPE_1__* pdev; } ;
struct ErrorInfo {scalar_t__ CommandStatus; } ;
struct CommandList {struct ErrorInfo* err_info; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int HPSA_DEVICE_RESET_MSG ;
 int IO_OK ;
 int TYPE_MSG ;
 struct CommandList* cmd_special_alloc (struct ctlr_info*) ;
 int cmd_special_free (struct ctlr_info*,struct CommandList*) ;
 int dev_warn (int *,char*) ;
 int fill_cmd (struct CommandList*,int ,struct ctlr_info*,int *,int ,int ,unsigned char*,int ) ;
 int hpsa_scsi_do_simple_cmd_core (struct ctlr_info*,struct CommandList*) ;
 int hpsa_scsi_interpret_error (struct CommandList*) ;

__attribute__((used)) static int hpsa_send_reset(struct ctlr_info *h, unsigned char *scsi3addr)
{
 int rc = IO_OK;
 struct CommandList *c;
 struct ErrorInfo *ei;

 c = cmd_special_alloc(h);

 if (c == ((void*)0)) {
  dev_warn(&h->pdev->dev, "cmd_special_alloc returned NULL!\n");
  return -ENOMEM;
 }

 fill_cmd(c, HPSA_DEVICE_RESET_MSG, h, ((void*)0), 0, 0, scsi3addr, TYPE_MSG);
 hpsa_scsi_do_simple_cmd_core(h, c);


 ei = c->err_info;
 if (ei->CommandStatus != 0) {
  hpsa_scsi_interpret_error(c);
  rc = -1;
 }
 cmd_special_free(h, c);
 return rc;
}
