
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct net_device {int name; } ;
struct Rcv_pkt {int dummy; } ;
struct TYPE_8__ {int buf_len; scalar_t__ timeout; scalar_t__ buf_ofs; scalar_t__ buf_seg; } ;
struct TYPE_9__ {TYPE_1__ rcv_pkt; } ;
struct TYPE_10__ {int length; TYPE_2__ data; int command; } ;
typedef TYPE_3__ pcb_struct ;
struct TYPE_11__ {int rx_active; } ;
typedef TYPE_4__ elp_device ;


 int CMD_RECEIVE_PACKET ;
 int elp_debug ;
 TYPE_4__* netdev_priv (struct net_device*) ;
 int pr_debug (char*,int ) ;
 int send_pcb (struct net_device*,TYPE_3__*) ;

__attribute__((used)) static bool start_receive(struct net_device *dev, pcb_struct * tx_pcb)
{
 bool status;
 elp_device *adapter = netdev_priv(dev);

 if (elp_debug >= 3)
  pr_debug("%s: restarting receiver\n", dev->name);
 tx_pcb->command = CMD_RECEIVE_PACKET;
 tx_pcb->length = sizeof(struct Rcv_pkt);
 tx_pcb->data.rcv_pkt.buf_seg
     = tx_pcb->data.rcv_pkt.buf_ofs = 0;
 tx_pcb->data.rcv_pkt.buf_len = 1600;
 tx_pcb->data.rcv_pkt.timeout = 0;
 status = send_pcb(dev, tx_pcb);
 if (status)
  adapter->rx_active++;
 return status;
}
