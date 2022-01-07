
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rndis_message {int ndis_msg_type; int msg_len; } ;
struct rndis_device {scalar_t__ state; } ;
struct netvsc_device {scalar_t__ extension; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct hv_netvsc_packet {int status; struct rndis_message* data; } ;
struct hv_device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int NVSP_STAT_FAIL ;
 scalar_t__ RNDIS_DEV_UNINITIALIZED ;





 int dump_rndis_message (struct hv_device*,struct rndis_message*) ;
 struct netvsc_device* hv_get_drvdata (struct hv_device*) ;
 int netdev_err (struct net_device*,char*,...) ;
 int rndis_filter_receive_data (struct rndis_device*,struct rndis_message*,struct hv_netvsc_packet*) ;
 int rndis_filter_receive_indicate_status (struct rndis_device*,struct rndis_message*) ;
 int rndis_filter_receive_response (struct rndis_device*,struct rndis_message*) ;

int rndis_filter_receive(struct hv_device *dev,
    struct hv_netvsc_packet *pkt)
{
 struct netvsc_device *net_dev = hv_get_drvdata(dev);
 struct rndis_device *rndis_dev;
 struct rndis_message *rndis_msg;
 struct net_device *ndev;
 int ret = 0;

 if (!net_dev) {
  ret = -EINVAL;
  goto exit;
 }

 ndev = net_dev->ndev;


 if (!net_dev->extension) {
  netdev_err(ndev, "got rndis message but no rndis device - "
     "dropping this message!\n");
  ret = -ENODEV;
  goto exit;
 }

 rndis_dev = (struct rndis_device *)net_dev->extension;
 if (rndis_dev->state == RNDIS_DEV_UNINITIALIZED) {
  netdev_err(ndev, "got rndis message but rndis device "
      "uninitialized...dropping this message!\n");
  ret = -ENODEV;
  goto exit;
 }

 rndis_msg = pkt->data;

 dump_rndis_message(dev, rndis_msg);

 switch (rndis_msg->ndis_msg_type) {
 case 130:

  rndis_filter_receive_data(rndis_dev, rndis_msg, pkt);
  break;

 case 131:
 case 129:
 case 128:

  rndis_filter_receive_response(rndis_dev, rndis_msg);
  break;

 case 132:

  rndis_filter_receive_indicate_status(rndis_dev, rndis_msg);
  break;
 default:
  netdev_err(ndev,
   "unhandled rndis message (type %u len %u)\n",
      rndis_msg->ndis_msg_type,
      rndis_msg->msg_len);
  break;
 }

exit:
 if (ret != 0)
  pkt->status = NVSP_STAT_FAIL;

 return ret;
}
