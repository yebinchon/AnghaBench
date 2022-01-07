
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int (* sendrequest_handler ) (int ,void*,size_t) ;int context; } ;
struct smscore_client_t {struct smscore_device_t* coredev; } ;
struct SmsMsgHdr_ST {int msgSrcId; } ;


 int EINVAL ;
 int sms_err (char*) ;
 int smscore_validate_client (struct smscore_device_t*,struct smscore_client_t*,int ,int ) ;
 int stub1 (int ,void*,size_t) ;

int smsclient_sendrequest(struct smscore_client_t *client,
     void *buffer, size_t size)
{
 struct smscore_device_t *coredev;
 struct SmsMsgHdr_ST *phdr = (struct SmsMsgHdr_ST *) buffer;
 int rc;

 if (client == ((void*)0)) {
  sms_err("Got NULL client");
  return -EINVAL;
 }

 coredev = client->coredev;


 if (coredev == ((void*)0)) {
  sms_err("Got NULL coredev");
  return -EINVAL;
 }

 rc = smscore_validate_client(client->coredev, client, 0,
         phdr->msgSrcId);
 if (rc < 0)
  return rc;

 return coredev->sendrequest_handler(coredev->context, buffer, size);
}
