
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hpsb_iso_packet_info {int dummy; } ;
struct hpsb_iso {int dummy; } ;
typedef enum isoctl_cmd { ____Placeholder_isoctl_cmd } isoctl_cmd ;


 int EINVAL ;
 int KERN_ERR ;
 int PRINT_G (int ,char*,int) ;
 int ohci_iso_recv_change_channel (struct hpsb_iso*,unsigned long,int) ;
 int ohci_iso_recv_init (struct hpsb_iso*) ;
 int ohci_iso_recv_release (struct hpsb_iso*,struct hpsb_iso_packet_info*) ;
 int ohci_iso_recv_set_channel_mask (struct hpsb_iso*,int ) ;
 int ohci_iso_recv_shutdown (struct hpsb_iso*) ;
 int ohci_iso_recv_start (struct hpsb_iso*,int,int,int) ;
 int ohci_iso_recv_stop (struct hpsb_iso*) ;
 int ohci_iso_recv_task (unsigned long) ;
 int ohci_iso_xmit_init (struct hpsb_iso*) ;
 int ohci_iso_xmit_queue (struct hpsb_iso*,struct hpsb_iso_packet_info*) ;
 int ohci_iso_xmit_shutdown (struct hpsb_iso*) ;
 int ohci_iso_xmit_start (struct hpsb_iso*,unsigned long) ;
 int ohci_iso_xmit_stop (struct hpsb_iso*) ;

__attribute__((used)) static int ohci_isoctl(struct hpsb_iso *iso, enum isoctl_cmd cmd, unsigned long arg)
{

 switch(cmd) {
 case 132:
  return ohci_iso_xmit_init(iso);
 case 129:
  return ohci_iso_xmit_start(iso, arg);
 case 128:
  ohci_iso_xmit_stop(iso);
  return 0;
 case 131:
  return ohci_iso_xmit_queue(iso, (struct hpsb_iso_packet_info*) arg);
 case 130:
  ohci_iso_xmit_shutdown(iso);
  return 0;

 case 140:
  return ohci_iso_recv_init(iso);
 case 135: {
  int *args = (int*) arg;
  return ohci_iso_recv_start(iso, args[0], args[1], args[2]);
 }
 case 134:
  ohci_iso_recv_stop(iso);
  return 0;
 case 138:
  ohci_iso_recv_release(iso, (struct hpsb_iso_packet_info*) arg);
  return 0;
 case 141:
  ohci_iso_recv_task((unsigned long) iso);
  return 0;
 case 136:
  ohci_iso_recv_shutdown(iso);
  return 0;
 case 139:
  ohci_iso_recv_change_channel(iso, arg, 1);
  return 0;
 case 133:
  ohci_iso_recv_change_channel(iso, arg, 0);
  return 0;
 case 137:
  ohci_iso_recv_set_channel_mask(iso, *((u64*) arg));
  return 0;

 default:
  PRINT_G(KERN_ERR, "ohci_isoctl cmd %d not implemented yet",
   cmd);
  break;
 }
 return -EINVAL;
}
