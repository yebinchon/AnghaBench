
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int response_code; } ;
struct init_sccb {TYPE_1__ header; } ;
struct TYPE_4__ {scalar_t__ status; int command; scalar_t__ sccb; } ;


 int EBUSY ;
 int EIO ;
 int HZ ;
 int SCLP_INIT_RETRY ;
 scalar_t__ SCLP_REQ_DONE ;
 scalar_t__ SCLP_REQ_RUNNING ;
 int SCLP_RETRY_INTERVAL ;
 int __sclp_make_init_req (int ,int ) ;
 int __sclp_set_request_timer (int,int ,int ) ;
 int ctl_clear_bit (int ,int) ;
 int ctl_set_bit (int ,int) ;
 int del_timer (int *) ;
 int ext_int_info_hwc ;
 int register_early_external_interrupt (int,int ,int *) ;
 int sclp_check_handler ;
 int sclp_check_timeout ;
 TYPE_2__ sclp_init_req ;
 int sclp_lock ;
 int sclp_request_timer ;
 int sclp_running_state ;
 int sclp_running_state_running ;
 int sclp_service_call (int ,struct init_sccb*) ;
 int sclp_sync_wait () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int unregister_early_external_interrupt (int,int ,int *) ;

__attribute__((used)) static int
sclp_check_interface(void)
{
 struct init_sccb *sccb;
 unsigned long flags;
 int retry;
 int rc;

 spin_lock_irqsave(&sclp_lock, flags);

 rc = register_early_external_interrupt(0x2401, sclp_check_handler,
            &ext_int_info_hwc);
 if (rc) {
  spin_unlock_irqrestore(&sclp_lock, flags);
  return rc;
 }
 for (retry = 0; retry <= SCLP_INIT_RETRY; retry++) {
  __sclp_make_init_req(0, 0);
  sccb = (struct init_sccb *) sclp_init_req.sccb;
  rc = sclp_service_call(sclp_init_req.command, sccb);
  if (rc == -EIO)
   break;
  sclp_init_req.status = SCLP_REQ_RUNNING;
  sclp_running_state = sclp_running_state_running;
  __sclp_set_request_timer(SCLP_RETRY_INTERVAL * HZ,
      sclp_check_timeout, 0);
  spin_unlock_irqrestore(&sclp_lock, flags);


  ctl_set_bit(0, 9);

  sclp_sync_wait();


  ctl_clear_bit(0,9);
  spin_lock_irqsave(&sclp_lock, flags);
  del_timer(&sclp_request_timer);
  if (sclp_init_req.status == SCLP_REQ_DONE &&
      sccb->header.response_code == 0x20) {
   rc = 0;
   break;
  } else
   rc = -EBUSY;
 }
 unregister_early_external_interrupt(0x2401, sclp_check_handler,
         &ext_int_info_hwc);
 spin_unlock_irqrestore(&sclp_lock, flags);
 return rc;
}
