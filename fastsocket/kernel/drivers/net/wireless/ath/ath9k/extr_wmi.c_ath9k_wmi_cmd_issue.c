
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wmi_cmd_hdr {void* seq_no; void* command_id; } ;
struct wmi {int tx_seq_id; int ctrl_epid; int htc; } ;
struct sk_buff {int dummy; } ;
typedef enum wmi_cmd_id { ____Placeholder_wmi_cmd_id } wmi_cmd_id ;


 void* cpu_to_be16 (int) ;
 int htc_send_epid (int ,struct sk_buff*,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;

__attribute__((used)) static int ath9k_wmi_cmd_issue(struct wmi *wmi,
          struct sk_buff *skb,
          enum wmi_cmd_id cmd, u16 len)
{
 struct wmi_cmd_hdr *hdr;

 hdr = (struct wmi_cmd_hdr *) skb_push(skb, sizeof(struct wmi_cmd_hdr));
 hdr->command_id = cpu_to_be16(cmd);
 hdr->seq_no = cpu_to_be16(++wmi->tx_seq_id);

 return htc_send_epid(wmi->htc, skb, wmi->ctrl_epid);
}
