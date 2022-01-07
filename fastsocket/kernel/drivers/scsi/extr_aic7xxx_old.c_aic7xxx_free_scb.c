
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct aic7xxx_scb {TYPE_1__* hscb; scalar_t__ tag_action; scalar_t__ sg_length; scalar_t__ sg_count; int * cmd; int flags; } ;
struct aic7xxx_host {TYPE_2__* scb_data; } ;
struct TYPE_4__ {int free_scbs; } ;
struct TYPE_3__ {int target_channel_lun; scalar_t__ target_status; scalar_t__ control; } ;


 int SCB_FREE ;
 int SCB_LIST_NULL ;
 int scbq_insert_head (int *,struct aic7xxx_scb*) ;

__attribute__((used)) static void
aic7xxx_free_scb(struct aic7xxx_host *p, struct aic7xxx_scb *scb)
{

  scb->flags = SCB_FREE;
  scb->cmd = ((void*)0);
  scb->sg_count = 0;
  scb->sg_length = 0;
  scb->tag_action = 0;
  scb->hscb->control = 0;
  scb->hscb->target_status = 0;
  scb->hscb->target_channel_lun = SCB_LIST_NULL;

  scbq_insert_head(&p->scb_data->free_scbs, scb);
}
