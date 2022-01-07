
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int clientslock; int clients; } ;
struct smscore_client_t {int entry; int context; int onremove_handler; int onresponse_handler; struct smscore_device_t* coredev; int idlist; } ;
struct smsclient_params_t {int initial_id; int data_type; int context; int onremove_handler; int onresponse_handler; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct smscore_client_t* kzalloc (int,int ) ;
 int list_add_locked (int *,int *,int *) ;
 int sms_debug (char*,int ,int ,int ) ;
 int sms_err (char*) ;
 scalar_t__ smscore_find_client (struct smscore_device_t*,int ,int ) ;
 int smscore_validate_client (struct smscore_device_t*,struct smscore_client_t*,int ,int ) ;

int smscore_register_client(struct smscore_device_t *coredev,
       struct smsclient_params_t *params,
       struct smscore_client_t **client)
{
 struct smscore_client_t *newclient;

 if (smscore_find_client(coredev, params->data_type,
    params->initial_id)) {
  sms_err("Client already exist.");
  return -EEXIST;
 }

 newclient = kzalloc(sizeof(struct smscore_client_t), GFP_KERNEL);
 if (!newclient) {
  sms_err("Failed to allocate memory for client.");
  return -ENOMEM;
 }

 INIT_LIST_HEAD(&newclient->idlist);
 newclient->coredev = coredev;
 newclient->onresponse_handler = params->onresponse_handler;
 newclient->onremove_handler = params->onremove_handler;
 newclient->context = params->context;
 list_add_locked(&newclient->entry, &coredev->clients,
   &coredev->clientslock);
 smscore_validate_client(coredev, newclient, params->data_type,
    params->initial_id);
 *client = newclient;
 sms_debug("%p %d %d", params->context, params->data_type,
    params->initial_id);

 return 0;
}
