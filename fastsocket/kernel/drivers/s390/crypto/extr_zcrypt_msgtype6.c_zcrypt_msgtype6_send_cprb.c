
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_device {int ap_dev; } ;
struct response_type {int work; int type; } ;
struct ica_xcRB {int dummy; } ;
struct ap_message {int message; struct response_type* private; scalar_t__ psmid; int receive; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 long ENOMEM ;
 int GFP_KERNEL ;
 int MSGTYPE06_MAX_MSG_SIZE ;
 int PCIXCC_RESPONSE_TYPE_XCRB ;
 int XCRB_msg_to_type6CPRB_msgX (struct zcrypt_device*,struct ap_message*,struct ica_xcRB*) ;
 int ap_cancel_message (int ,struct ap_message*) ;
 int ap_init_message (struct ap_message*) ;
 int ap_queue_message (int ,struct ap_message*) ;
 scalar_t__ atomic_inc_return (int *) ;
 int convert_response_xcrb (struct zcrypt_device*,struct ap_message*,struct ica_xcRB*) ;
 TYPE_1__* current ;
 int init_completion (int *) ;
 int kmalloc (int ,int ) ;
 int kzfree (int ) ;
 int wait_for_completion_interruptible (int *) ;
 int zcrypt_msgtype6_receive ;
 int zcrypt_step ;

__attribute__((used)) static long zcrypt_msgtype6_send_cprb(struct zcrypt_device *zdev,
        struct ica_xcRB *xcRB)
{
 struct ap_message ap_msg;
 struct response_type resp_type = {
  .type = PCIXCC_RESPONSE_TYPE_XCRB,
 };
 int rc;

 ap_init_message(&ap_msg);
 ap_msg.message = kmalloc(MSGTYPE06_MAX_MSG_SIZE, GFP_KERNEL);
 if (!ap_msg.message)
  return -ENOMEM;
 ap_msg.receive = zcrypt_msgtype6_receive;
 ap_msg.psmid = (((unsigned long long) current->pid) << 32) +
    atomic_inc_return(&zcrypt_step);
 ap_msg.private = &resp_type;
 rc = XCRB_msg_to_type6CPRB_msgX(zdev, &ap_msg, xcRB);
 if (rc)
  goto out_free;
 init_completion(&resp_type.work);
 ap_queue_message(zdev->ap_dev, &ap_msg);
 rc = wait_for_completion_interruptible(&resp_type.work);
 if (rc == 0)
  rc = convert_response_xcrb(zdev, &ap_msg, xcRB);
 else

  ap_cancel_message(zdev->ap_dev, &ap_msg);
out_free:
 kzfree(ap_msg.message);
 return rc;
}
