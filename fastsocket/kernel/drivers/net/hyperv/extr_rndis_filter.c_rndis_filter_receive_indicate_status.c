
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rndis_indicate_status {scalar_t__ status; } ;
struct TYPE_3__ {struct rndis_indicate_status indicate_status; } ;
struct rndis_message {TYPE_1__ msg; } ;
struct rndis_device {TYPE_2__* net_dev; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ RNDIS_STATUS_MEDIA_CONNECT ;
 scalar_t__ RNDIS_STATUS_MEDIA_DISCONNECT ;
 int netvsc_linkstatus_callback (int ,int) ;

__attribute__((used)) static void rndis_filter_receive_indicate_status(struct rndis_device *dev,
          struct rndis_message *resp)
{
 struct rndis_indicate_status *indicate =
   &resp->msg.indicate_status;

 if (indicate->status == RNDIS_STATUS_MEDIA_CONNECT) {
  netvsc_linkstatus_callback(
   dev->net_dev->dev, 1);
 } else if (indicate->status == RNDIS_STATUS_MEDIA_DISCONNECT) {
  netvsc_linkstatus_callback(
   dev->net_dev->dev, 0);
 } else {



 }
}
