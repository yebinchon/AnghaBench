
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ctlr_info {int cmpQ; TYPE_2__* pdev; } ;
struct TYPE_3__ {int * CDB; } ;
struct CommandList {int scsi_cmd; TYPE_1__ Request; } ;
struct TYPE_4__ {int dev; } ;


 int dev_warn (int *,char*) ;
 struct CommandList* hpsa_find_cmd_in_queue (struct ctlr_info*,int ,int *) ;
 struct CommandList* hpsa_find_cmd_in_queue_by_tag (struct ctlr_info*,int *,int *) ;
 int hpsa_send_abort (struct ctlr_info*,unsigned char*,struct CommandList*,int) ;
 int memcpy (int *,int *,int) ;
 int swizzle_abort_tag (int *) ;

__attribute__((used)) static int hpsa_send_abort_both_ways(struct ctlr_info *h,
 unsigned char *scsi3addr, struct CommandList *abort)
{
 u8 swizzled_tag[8];
 struct CommandList *c;
 int rc = 0, rc2 = 0;





 memcpy(swizzled_tag, &abort->Request.CDB[4], 8);
 swizzle_abort_tag(swizzled_tag);
 c = hpsa_find_cmd_in_queue_by_tag(h, swizzled_tag, &h->cmpQ);
 if (c != ((void*)0)) {
  dev_warn(&h->pdev->dev, "Unexpectedly found byte-swapped tag in completion queue.\n");
  return hpsa_send_abort(h, scsi3addr, abort, 0);
 }
 rc = hpsa_send_abort(h, scsi3addr, abort, 0);





 c = hpsa_find_cmd_in_queue(h, abort->scsi_cmd, &h->cmpQ);
 if (c)
  rc2 = hpsa_send_abort(h, scsi3addr, abort, 1);
 return rc && rc2;
}
