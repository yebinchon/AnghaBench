
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct request {int errors; TYPE_1__* rq_disk; } ;
struct TYPE_12__ {int* autodetect; } ;
struct TYPE_11__ {size_t probed_format; } ;
struct TYPE_10__ {int queue_lock; } ;
struct TYPE_9__ {scalar_t__ flags; } ;
struct TYPE_8__ {scalar_t__ private_data; } ;


 TYPE_7__* DP ;
 int DPRINT (char*) ;
 TYPE_6__* DRS ;
 int FD_DISK_CHANGED ;
 int FD_NEED_TWADDLE ;
 scalar_t__ N_DRIVE ;
 int REPEAT ;
 scalar_t__ TESTF (int ) ;
 int * _floppy ;
 struct request* blk_fetch_request (TYPE_3__*) ;
 scalar_t__ current_drive ;
 struct request* current_req ;
 int current_reqD ;
 int debugt (char*) ;
 TYPE_2__ default_raw_cmd ;
 int disk_change (scalar_t__) ;
 int * do_floppy ;
 int * errors ;
 int fake_change ;
 int floppy_off (scalar_t__) ;
 TYPE_3__* floppy_queue ;
 int floppy_start ;
 int * floppy_type ;
 int jiffies ;
 int lastredo ;
 int make_raw_rw_request () ;
 scalar_t__ next_valid_format () ;
 int probing ;
 TYPE_2__* raw_cmd ;
 int request_done (int) ;
 int reschedule_timeout (int ,char*,int ) ;
 int schedule_bh (int ) ;
 int set_fdc (int) ;
 int set_floppy (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 scalar_t__ start_motor (void (*) ()) ;
 scalar_t__ test_bit (scalar_t__,int *) ;
 int twaddle () ;
 int unlock_fdc () ;

__attribute__((used)) static void redo_fd_request(void)
{

 int drive;
 int tmp;

 lastredo = jiffies;
 if (current_drive < N_DRIVE)
  floppy_off(current_drive);

 for (;;) {
  if (!current_req) {
   struct request *req;

   spin_lock_irq(floppy_queue->queue_lock);
   req = blk_fetch_request(floppy_queue);
   spin_unlock_irq(floppy_queue->queue_lock);
   if (!req) {
    do_floppy = ((void*)0);
    unlock_fdc();
    return;
   }
   current_req = req;
  }
  drive = (long)current_req->rq_disk->private_data;
  set_fdc(drive);
  reschedule_timeout(current_reqD, "redo fd request", 0);

  set_floppy(drive);
  raw_cmd = &default_raw_cmd;
  raw_cmd->flags = 0;
  if (start_motor(redo_fd_request))
   return;
  disk_change(current_drive);
  if (test_bit(current_drive, &fake_change) ||
      TESTF(FD_DISK_CHANGED)) {
   DPRINT("disk absent or changed during operation\n");
   {request_done(0); continue; };
  }
  if (!_floppy) {
   if (!probing) {
    DRS->probed_format = 0;
    if (next_valid_format()) {
     DPRINT("no autodetectable formats\n");
     _floppy = ((void*)0);
     {request_done(0); continue; };
    }
   }
   probing = 1;
   _floppy =
       floppy_type + DP->autodetect[DRS->probed_format];
  } else
   probing = 0;
  errors = &(current_req->errors);
  tmp = make_raw_rw_request();
  if (tmp < 2) {
   request_done(tmp);
   continue;
  }

  if (TESTF(FD_NEED_TWADDLE))
   twaddle();
  schedule_bh(floppy_start);
  debugt("queue fd request");
  return;
 }

}
