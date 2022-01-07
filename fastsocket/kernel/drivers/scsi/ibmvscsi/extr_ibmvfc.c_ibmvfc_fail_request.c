
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ibmvfc_event {int (* done ) (struct ibmvfc_event*) ;int timer; int queue; TYPE_3__* xfer_iu; TYPE_1__* cmnd; } ;
struct TYPE_5__ {int status; } ;
struct TYPE_6__ {TYPE_2__ mad_common; } ;
struct TYPE_4__ {int result; } ;


 int IBMVFC_MAD_DRIVER_FAILED ;
 int del_timer (int *) ;
 int ibmvfc_scsi_eh_done (struct ibmvfc_event*) ;
 int ibmvfc_trc_end (struct ibmvfc_event*) ;
 int list_del (int *) ;
 int stub1 (struct ibmvfc_event*) ;

__attribute__((used)) static void ibmvfc_fail_request(struct ibmvfc_event *evt, int error_code)
{
 if (evt->cmnd) {
  evt->cmnd->result = (error_code << 16);
  evt->done = ibmvfc_scsi_eh_done;
 } else
  evt->xfer_iu->mad_common.status = IBMVFC_MAD_DRIVER_FAILED;

 list_del(&evt->queue);
 del_timer(&evt->timer);
 ibmvfc_trc_end(evt);
 evt->done(evt);
}
