
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_completion_status {scalar_t__ dl_opcode; int tag; int tag_valid; int tmf_state; } ;
struct done_list_struct {scalar_t__ opcode; } ;
struct asd_ascb {int completion; int tag; int tag_valid; struct tasklet_completion_status* uldd_task; int timer; } ;


 int ASD_DPRINTK (char*) ;
 scalar_t__ TC_SSP_RESP ;
 int asd_ascb_free (struct asd_ascb*) ;
 int asd_get_tmf_resp_tasklet (struct asd_ascb*,struct done_list_struct*) ;
 int complete (int ) ;
 int del_timer (int *) ;

__attribute__((used)) static void asd_tmf_tasklet_complete(struct asd_ascb *ascb,
         struct done_list_struct *dl)
{
 struct tasklet_completion_status *tcs;

 if (!del_timer(&ascb->timer))
  return;

 tcs = ascb->uldd_task;
 ASD_DPRINTK("tmf tasklet complete\n");

 tcs->dl_opcode = dl->opcode;

 if (dl->opcode == TC_SSP_RESP) {
  tcs->tmf_state = asd_get_tmf_resp_tasklet(ascb, dl);
  tcs->tag_valid = ascb->tag_valid;
  tcs->tag = ascb->tag;
 }

 complete(ascb->completion);
 asd_ascb_free(ascb);
}
