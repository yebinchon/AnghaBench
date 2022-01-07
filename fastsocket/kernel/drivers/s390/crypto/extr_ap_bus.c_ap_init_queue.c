
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_queue_status {int response_code; int queue_empty; } ;
typedef int ap_qid_t ;


 int AP_MAX_RESET ;
 int AP_QID_DEVICE (int ) ;






 int EBUSY ;
 int ENODEV ;
 int ap_interrupt_indicator ;
 int ap_queue_enable_interruption (int ,int ) ;
 struct ap_queue_status ap_reset_queue (int ) ;
 struct ap_queue_status ap_test_queue (int ,int*,int*) ;
 scalar_t__ ap_using_interrupts () ;
 int pr_err (char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ap_init_queue(ap_qid_t qid)
{
 struct ap_queue_status status;
 int rc, dummy, i;

 rc = -ENODEV;
 status = ap_reset_queue(qid);
 for (i = 0; i < AP_MAX_RESET; i++) {
  switch (status.response_code) {
  case 130:
   if (status.queue_empty)
    rc = 0;
   break;
  case 129:
  case 131:
  case 132:
   i = AP_MAX_RESET;
   break;
  case 128:
   rc = -EBUSY;
  case 133:
  default:
   break;
  }
  if (rc != -ENODEV && rc != -EBUSY)
   break;
  if (i < AP_MAX_RESET - 1) {
   udelay(5);
   status = ap_test_queue(qid, &dummy, &dummy);
  }
 }
 if (rc == 0 && ap_using_interrupts()) {
  rc = ap_queue_enable_interruption(qid, ap_interrupt_indicator);



  if (rc)
   pr_err("Registering adapter interrupts for "
          "AP %d failed\n", AP_QID_DEVICE(qid));
 }
 return rc;
}
