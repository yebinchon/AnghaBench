
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int (* sendrequest_handler ) (int ,void*,size_t) ;int context; } ;
struct completion {int dummy; } ;


 int ETIME ;
 int SMS_PROTOCOL_MAX_RAOUNDTRIP_MS ;
 int msecs_to_jiffies (int ) ;
 int sms_info (char*,int) ;
 int stub1 (int ,void*,size_t) ;
 scalar_t__ wait_for_completion_timeout (struct completion*,int ) ;

__attribute__((used)) static int smscore_sendrequest_and_wait(struct smscore_device_t *coredev,
  void *buffer, size_t size, struct completion *completion) {
 int rc = coredev->sendrequest_handler(coredev->context, buffer, size);
 if (rc < 0) {
  sms_info("sendrequest returned error %d", rc);
  return rc;
 }

 return wait_for_completion_timeout(completion,
   msecs_to_jiffies(SMS_PROTOCOL_MAX_RAOUNDTRIP_MS)) ?
   0 : -ETIME;
}
