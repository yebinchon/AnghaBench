
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_device {int ap_dev; } ;
struct response_type {int work; int type; } ;
struct ica_rsa_modexpo_crt {int outputdatalength; int outputdata; } ;
struct ap_message {void* message; struct response_type* private; scalar_t__ psmid; int receive; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 long ENOMEM ;
 int GFP_KERNEL ;
 int ICACRT_msg_to_type6CRT_msgX (struct zcrypt_device*,struct ap_message*,struct ica_rsa_modexpo_crt*) ;
 int PCIXCC_RESPONSE_TYPE_ICA ;
 int ap_cancel_message (int ,struct ap_message*) ;
 int ap_init_message (struct ap_message*) ;
 int ap_queue_message (int ,struct ap_message*) ;
 scalar_t__ atomic_inc_return (int *) ;
 int convert_response_ica (struct zcrypt_device*,struct ap_message*,int ,int ) ;
 TYPE_1__* current ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int init_completion (int *) ;
 int wait_for_completion_interruptible (int *) ;
 int zcrypt_msgtype6_receive ;
 int zcrypt_step ;

__attribute__((used)) static long zcrypt_msgtype6_modexpo_crt(struct zcrypt_device *zdev,
          struct ica_rsa_modexpo_crt *crt)
{
 struct ap_message ap_msg;
 struct response_type resp_type = {
  .type = PCIXCC_RESPONSE_TYPE_ICA,
 };
 int rc;

 ap_init_message(&ap_msg);
 ap_msg.message = (void *) get_zeroed_page(GFP_KERNEL);
 if (!ap_msg.message)
  return -ENOMEM;
 ap_msg.receive = zcrypt_msgtype6_receive;
 ap_msg.psmid = (((unsigned long long) current->pid) << 32) +
    atomic_inc_return(&zcrypt_step);
 ap_msg.private = &resp_type;
 rc = ICACRT_msg_to_type6CRT_msgX(zdev, &ap_msg, crt);
 if (rc)
  goto out_free;
 init_completion(&resp_type.work);
 ap_queue_message(zdev->ap_dev, &ap_msg);
 rc = wait_for_completion_interruptible(&resp_type.work);
 if (rc == 0)
  rc = convert_response_ica(zdev, &ap_msg, crt->outputdata,
       crt->outputdatalength);
 else

  ap_cancel_message(zdev->ap_dev, &ap_msg);
out_free:
 free_page((unsigned long) ap_msg.message);
 return rc;
}
