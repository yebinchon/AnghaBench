
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ctlr_info {TYPE_1__* pdev; } ;
struct ReportLUNdata {int dummy; } ;
struct ErrorInfo {scalar_t__ CommandStatus; } ;
struct TYPE_4__ {int* CDB; } ;
struct CommandList {struct ErrorInfo* err_info; TYPE_2__ Request; } ;
typedef int scsi3addr ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ CMD_DATA_UNDERRUN ;
 int HPSA_REPORT_LOG ;
 int HPSA_REPORT_PHYS ;
 int IO_OK ;
 int PCI_DMA_FROMDEVICE ;
 int TYPE_CMD ;
 struct CommandList* cmd_special_alloc (struct ctlr_info*) ;
 int cmd_special_free (struct ctlr_info*,struct CommandList*) ;
 int dev_err (int *,char*) ;
 int fill_cmd (struct CommandList*,int ,struct ctlr_info*,struct ReportLUNdata*,int,int ,unsigned char*,int ) ;
 int hpsa_scsi_do_simple_cmd_with_retry (struct ctlr_info*,struct CommandList*,int ) ;
 int hpsa_scsi_interpret_error (struct CommandList*) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int hpsa_scsi_do_report_luns(struct ctlr_info *h, int logical,
  struct ReportLUNdata *buf, int bufsize,
  int extended_response)
{
 int rc = IO_OK;
 struct CommandList *c;
 unsigned char scsi3addr[8];
 struct ErrorInfo *ei;

 c = cmd_special_alloc(h);
 if (c == ((void*)0)) {
  dev_err(&h->pdev->dev, "cmd_special_alloc returned NULL!\n");
  return -1;
 }

 memset(scsi3addr, 0, sizeof(scsi3addr));
 fill_cmd(c, logical ? HPSA_REPORT_LOG : HPSA_REPORT_PHYS, h,
  buf, bufsize, 0, scsi3addr, TYPE_CMD);
 if (extended_response)
  c->Request.CDB[1] = extended_response;
 hpsa_scsi_do_simple_cmd_with_retry(h, c, PCI_DMA_FROMDEVICE);
 ei = c->err_info;
 if (ei->CommandStatus != 0 &&
     ei->CommandStatus != CMD_DATA_UNDERRUN) {
  hpsa_scsi_interpret_error(c);
  rc = -1;
 }
 cmd_special_free(h, c);
 return rc;
}
