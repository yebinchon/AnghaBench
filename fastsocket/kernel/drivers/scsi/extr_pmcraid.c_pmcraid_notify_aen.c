
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int dev; } ;
struct pmcraid_instance {TYPE_2__ cdev; TYPE_1__* host; } ;
struct pmcraid_aen_msg {int hostno; int length; } ;
struct genl_family {int hdrsize; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_5__ {int unique_id; } ;


 int EINVAL ;
 int ENOMEM ;
 int GENL_HDRLEN ;
 int GFP_ATOMIC ;
 int MINOR (int ) ;
 int NLMSG_HDRLEN ;
 int PMCRAID_AEN_ATTR_EVENT ;
 int PMCRAID_AEN_CMD_EVENT ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast (struct sk_buff*,int ,int ,int ) ;
 struct sk_buff* genlmsg_new (int,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,TYPE_3__*,int ,int ) ;
 int nla_put (struct sk_buff*,int ,int,struct pmcraid_aen_msg*) ;
 int nla_total_size (int) ;
 int nlmsg_free (struct sk_buff*) ;
 int pmcraid_err (char*,...) ;
 TYPE_3__ pmcraid_event_family ;
 int pmcraid_info (char*,int) ;

__attribute__((used)) static int pmcraid_notify_aen(
 struct pmcraid_instance *pinstance,
 struct pmcraid_aen_msg *aen_msg,
 u32 data_size
)
{
 struct sk_buff *skb;
 void *msg_header;
 u32 total_size, nla_genl_hdr_total_size;
 int result;

 aen_msg->hostno = (pinstance->host->unique_id << 16 |
      MINOR(pinstance->cdev.dev));
 aen_msg->length = data_size;

 data_size += sizeof(*aen_msg);

 total_size = nla_total_size(data_size);

 nla_genl_hdr_total_size =
  (total_size + (GENL_HDRLEN +
  ((struct genl_family *)&pmcraid_event_family)->hdrsize)
   + NLMSG_HDRLEN);
 skb = genlmsg_new(nla_genl_hdr_total_size, GFP_ATOMIC);


 if (!skb) {
  pmcraid_err("Failed to allocate aen data SKB of size: %x\n",
        total_size);
  return -ENOMEM;
 }


 msg_header = genlmsg_put(skb, 0, 0,
     &pmcraid_event_family, 0,
     PMCRAID_AEN_CMD_EVENT);
 if (!msg_header) {
  pmcraid_err("failed to copy command details\n");
  nlmsg_free(skb);
  return -ENOMEM;
 }

 result = nla_put(skb, PMCRAID_AEN_ATTR_EVENT, data_size, aen_msg);

 if (result) {
  pmcraid_err("failed to copy AEN attribute data\n");
  nlmsg_free(skb);
  return -EINVAL;
 }


 result = genlmsg_end(skb, msg_header);

 if (result < 0) {
  pmcraid_err("genlmsg_end failed\n");
  nlmsg_free(skb);
  return result;
 }

 result =
  genlmsg_multicast(skb, 0, pmcraid_event_family.id, GFP_ATOMIC);




 if (result)
  pmcraid_info("error (%x) sending aen event message\n", result);
 return result;
}
