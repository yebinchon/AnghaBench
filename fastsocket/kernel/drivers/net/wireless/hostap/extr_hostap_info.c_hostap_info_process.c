
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sk_buff {unsigned char* data; int len; } ;
struct hfa384x_info_frame {int type; int len; } ;
struct TYPE_9__ {TYPE_1__* dev; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_8__ {int name; } ;


 int DEBUG_EXTRA ;




 int PDEBUG (int ,char*,...) ;
 int PDEBUG2 (int ,char*,...) ;
 int le16_to_cpu (int ) ;
 int prism2_info_commtallies (TYPE_2__*,unsigned char*,int) ;
 int prism2_info_hostscanresults (TYPE_2__*,unsigned char*,int) ;
 int prism2_info_linkstatus (TYPE_2__*,unsigned char*,int) ;
 int prism2_info_scanresults (TYPE_2__*,unsigned char*,int) ;

void hostap_info_process(local_info_t *local, struct sk_buff *skb)
{
 struct hfa384x_info_frame *info;
 unsigned char *buf;
 int left;

 int i;


 info = (struct hfa384x_info_frame *) skb->data;
 buf = skb->data + sizeof(*info);
 left = skb->len - sizeof(*info);

 switch (le16_to_cpu(info->type)) {
 case 131:
  prism2_info_commtallies(local, buf, left);
  break;


 case 129:
  prism2_info_linkstatus(local, buf, left);
  break;

 case 128:
  prism2_info_scanresults(local, buf, left);
  break;

 case 130:
  prism2_info_hostscanresults(local, buf, left);
  break;



 default:
  PDEBUG(DEBUG_EXTRA, "%s: INFO - len=%d type=0x%04x\n",
         local->dev->name, le16_to_cpu(info->len),
         le16_to_cpu(info->type));
  PDEBUG(DEBUG_EXTRA, "Unknown info frame:");
  for (i = 0; i < (left < 100 ? left : 100); i++)
   PDEBUG2(DEBUG_EXTRA, " %02x", buf[i]);
  PDEBUG2(DEBUG_EXTRA, "\n");
  break;

 }
}
