
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_device {int ap_dev; } ;
struct response_type {int work; int type; } ;
struct ap_message {int message; struct response_type* private; scalar_t__ psmid; int receive; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 long ENOMEM ;
 int GFP_KERNEL ;
 int MSGTYPE06_MAX_MSG_SIZE ;
 int PCIXCC_RESPONSE_TYPE_XCRB ;
 int ZCRYPT_RNG_BUFFER_SIZE ;
 int ap_cancel_message (int ,struct ap_message*) ;
 int ap_init_message (struct ap_message*) ;
 int ap_queue_message (int ,struct ap_message*) ;
 scalar_t__ atomic_inc_return (int *) ;
 int convert_response_rng (struct zcrypt_device*,struct ap_message*,char*) ;
 TYPE_1__* current ;
 int init_completion (int *) ;
 int kfree (int ) ;
 int kmalloc (int ,int ) ;
 int rng_type6CPRB_msgX (int ,struct ap_message*,int ) ;
 int wait_for_completion_interruptible (int *) ;
 int zcrypt_msgtype6_receive ;
 int zcrypt_step ;

__attribute__((used)) static long zcrypt_msgtype6_rng(struct zcrypt_device *zdev,
        char *buffer)
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
 rng_type6CPRB_msgX(zdev->ap_dev, &ap_msg, ZCRYPT_RNG_BUFFER_SIZE);
 init_completion(&resp_type.work);
 ap_queue_message(zdev->ap_dev, &ap_msg);
 rc = wait_for_completion_interruptible(&resp_type.work);
 if (rc == 0)
  rc = convert_response_rng(zdev, &ap_msg, buffer);
 else

  ap_cancel_message(zdev->ap_dev, &ap_msg);
 kfree(ap_msg.message);
 return rc;
}
