
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {int client_migrated; int dev; int pool; int logged_in; int state; } ;
struct ibmvfc_event {int (* done ) (struct ibmvfc_event*) ;int queue; int timer; int free; } ;
struct ibmvfc_crq {long ioba; int valid; long format; } ;


 int DID_ERROR ;
 int DID_REQUEUE ;
 scalar_t__ IBMVFC_ASYNC_EVENT ;





 int IBMVFC_HOST_ACTION_NONE ;
 int IBMVFC_HOST_ACTION_REENABLE ;
 int IBMVFC_HOST_ACTION_RESET ;
 int IBMVFC_LINK_DOWN ;
 int IBMVFC_NO_CRQ ;
 long IBMVFC_PARTITION_MIGRATED ;
 int atomic_read (int *) ;
 int del_timer (int *) ;
 int dev_err (int ,char*,long) ;
 int dev_info (int ,char*) ;
 int ibmvfc_init_host (struct ibmvfc_host*) ;
 int ibmvfc_link_down (struct ibmvfc_host*,int ) ;
 int ibmvfc_purge_requests (struct ibmvfc_host*,int ) ;
 long ibmvfc_send_crq_init_complete (struct ibmvfc_host*) ;
 int ibmvfc_set_host_action (struct ibmvfc_host*,int ) ;
 int ibmvfc_trc_end (struct ibmvfc_event*) ;
 int ibmvfc_valid_event (int *,struct ibmvfc_event*) ;
 int list_del (int *) ;
 int stub1 (struct ibmvfc_event*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ibmvfc_handle_crq(struct ibmvfc_crq *crq, struct ibmvfc_host *vhost)
{
 long rc;
 struct ibmvfc_event *evt = (struct ibmvfc_event *)crq->ioba;

 switch (crq->valid) {
 case 129:
  switch (crq->format) {
  case 131:
   dev_info(vhost->dev, "Partner initialized\n");

   rc = ibmvfc_send_crq_init_complete(vhost);
   if (rc == 0)
    ibmvfc_init_host(vhost);
   else
    dev_err(vhost->dev, "Unable to send init rsp. rc=%ld\n", rc);
   break;
  case 130:
   dev_info(vhost->dev, "Partner initialization complete\n");
   ibmvfc_init_host(vhost);
   break;
  default:
   dev_err(vhost->dev, "Unknown crq message type: %d\n", crq->format);
  }
  return;
 case 128:
  vhost->state = IBMVFC_NO_CRQ;
  vhost->logged_in = 0;
  ibmvfc_set_host_action(vhost, IBMVFC_HOST_ACTION_NONE);
  if (crq->format == IBMVFC_PARTITION_MIGRATED) {

   dev_info(vhost->dev, "Re-enabling adapter\n");
   vhost->client_migrated = 1;
   ibmvfc_purge_requests(vhost, DID_REQUEUE);
   ibmvfc_link_down(vhost, IBMVFC_LINK_DOWN);
   ibmvfc_set_host_action(vhost, IBMVFC_HOST_ACTION_REENABLE);
  } else {
   dev_err(vhost->dev, "Virtual adapter failed (rc=%d)\n", crq->format);
   ibmvfc_purge_requests(vhost, DID_ERROR);
   ibmvfc_link_down(vhost, IBMVFC_LINK_DOWN);
   ibmvfc_set_host_action(vhost, IBMVFC_HOST_ACTION_RESET);
  }
  return;
 case 132:
  break;
 default:
  dev_err(vhost->dev, "Got an invalid message type 0x%02x\n", crq->valid);
  return;
 }

 if (crq->format == IBMVFC_ASYNC_EVENT)
  return;





 if (unlikely(!ibmvfc_valid_event(&vhost->pool, evt))) {
  dev_err(vhost->dev, "Returned correlation_token 0x%08llx is invalid!\n",
   crq->ioba);
  return;
 }

 if (unlikely(atomic_read(&evt->free))) {
  dev_err(vhost->dev, "Received duplicate correlation_token 0x%08llx!\n",
   crq->ioba);
  return;
 }

 del_timer(&evt->timer);
 list_del(&evt->queue);
 ibmvfc_trc_end(evt);
 evt->done(evt);
}
