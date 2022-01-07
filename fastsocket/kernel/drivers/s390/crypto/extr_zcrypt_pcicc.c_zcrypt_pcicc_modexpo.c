
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_device {int ap_dev; } ;
struct ica_rsa_modexpo {int outputdatalength; int outputdata; } ;
struct completion {int dummy; } ;
struct ap_message {void* message; struct completion* private; scalar_t__ psmid; int length; int receive; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 long ENOMEM ;
 int GFP_KERNEL ;
 int ICAMEX_msg_to_type6MEX_msg (struct zcrypt_device*,struct ap_message*,struct ica_rsa_modexpo*) ;
 int PAGE_SIZE ;
 int ap_cancel_message (int ,struct ap_message*) ;
 int ap_init_message (struct ap_message*) ;
 int ap_queue_message (int ,struct ap_message*) ;
 scalar_t__ atomic_inc_return (int *) ;
 int convert_response (struct zcrypt_device*,struct ap_message*,int ,int ) ;
 TYPE_1__* current ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 int init_completion (struct completion*) ;
 int wait_for_completion_interruptible (struct completion*) ;
 int zcrypt_pcicc_receive ;
 int zcrypt_step ;

__attribute__((used)) static long zcrypt_pcicc_modexpo(struct zcrypt_device *zdev,
     struct ica_rsa_modexpo *mex)
{
 struct ap_message ap_msg;
 struct completion work;
 int rc;

 ap_init_message(&ap_msg);
 ap_msg.message = (void *) get_zeroed_page(GFP_KERNEL);
 if (!ap_msg.message)
  return -ENOMEM;
 ap_msg.receive = zcrypt_pcicc_receive;
 ap_msg.length = PAGE_SIZE;
 ap_msg.psmid = (((unsigned long long) current->pid) << 32) +
    atomic_inc_return(&zcrypt_step);
 ap_msg.private = &work;
 rc = ICAMEX_msg_to_type6MEX_msg(zdev, &ap_msg, mex);
 if (rc)
  goto out_free;
 init_completion(&work);
 ap_queue_message(zdev->ap_dev, &ap_msg);
 rc = wait_for_completion_interruptible(&work);
 if (rc == 0)
  rc = convert_response(zdev, &ap_msg, mex->outputdata,
          mex->outputdatalength);
 else

  ap_cancel_message(zdev->ap_dev, &ap_msg);
out_free:
 free_page((unsigned long) ap_msg.message);
 return rc;
}
