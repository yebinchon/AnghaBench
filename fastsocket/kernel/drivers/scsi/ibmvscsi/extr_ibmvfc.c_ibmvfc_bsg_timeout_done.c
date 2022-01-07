
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {int dev; scalar_t__ aborting_passthru; } ;
struct ibmvfc_event {struct ibmvfc_host* vhost; } ;


 int dev_info (int ,char*) ;
 int ibmvfc_free_event (struct ibmvfc_event*) ;

__attribute__((used)) static void ibmvfc_bsg_timeout_done(struct ibmvfc_event *evt)
{
 struct ibmvfc_host *vhost = evt->vhost;

 ibmvfc_free_event(evt);
 vhost->aborting_passthru = 0;
 dev_info(vhost->dev, "Passthru command cancelled\n");
}
