
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct TYPE_2__ {int Status; int * ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct bfad_tskim_s {int dummy; } ;
typedef enum bfi_tskim_status { ____Placeholder_bfi_tskim_status } bfi_tskim_status ;


 int IO_DONE_BIT ;
 int set_bit (int ,unsigned long*) ;
 int wake_up (int *) ;

void
bfa_cb_tskim_done(void *bfad, struct bfad_tskim_s *dtsk,
     enum bfi_tskim_status tsk_status)
{
 struct scsi_cmnd *cmnd = (struct scsi_cmnd *)dtsk;
 wait_queue_head_t *wq;

 cmnd->SCp.Status |= tsk_status << 1;
 set_bit(IO_DONE_BIT, (unsigned long *)&cmnd->SCp.Status);
 wq = (wait_queue_head_t *) cmnd->SCp.ptr;
 cmnd->SCp.ptr = ((void*)0);

 if (wq)
  wake_up(wq);
}
