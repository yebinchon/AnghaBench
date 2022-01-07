
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {TYPE_1__* pdev; } ;
struct ErrorInfo {scalar_t__ CommandStatus; } ;
struct CommandList {struct ErrorInfo* err_info; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ CMD_DATA_UNDERRUN ;
 int ENOMEM ;
 int HPSA_INQUIRY ;
 int IO_OK ;
 int PCI_DMA_FROMDEVICE ;
 int TYPE_CMD ;
 struct CommandList* cmd_special_alloc (struct ctlr_info*) ;
 int cmd_special_free (struct ctlr_info*,struct CommandList*) ;
 int dev_warn (int *,char*) ;
 int fill_cmd (struct CommandList*,int ,struct ctlr_info*,unsigned char*,unsigned char,unsigned char,unsigned char*,int ) ;
 int hpsa_scsi_do_simple_cmd_with_retry (struct ctlr_info*,struct CommandList*,int ) ;
 int hpsa_scsi_interpret_error (struct CommandList*) ;

__attribute__((used)) static int hpsa_scsi_do_inquiry(struct ctlr_info *h, unsigned char *scsi3addr,
   unsigned char page, unsigned char *buf,
   unsigned char bufsize)
{
 int rc = IO_OK;
 struct CommandList *c;
 struct ErrorInfo *ei;

 c = cmd_special_alloc(h);

 if (c == ((void*)0)) {
  dev_warn(&h->pdev->dev, "cmd_special_alloc returned NULL!\n");
  return -ENOMEM;
 }

 fill_cmd(c, HPSA_INQUIRY, h, buf, bufsize, page, scsi3addr, TYPE_CMD);
 hpsa_scsi_do_simple_cmd_with_retry(h, c, PCI_DMA_FROMDEVICE);
 ei = c->err_info;
 if (ei->CommandStatus != 0 && ei->CommandStatus != CMD_DATA_UNDERRUN) {
  hpsa_scsi_interpret_error(c);
  rc = -1;
 }
 cmd_special_free(h, c);
 return rc;
}
