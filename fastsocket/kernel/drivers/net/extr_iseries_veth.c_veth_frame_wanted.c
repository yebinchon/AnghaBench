
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct veth_port {int mac_addr; int num_mcast; int* mcast_addr; int mcast_gate; scalar_t__ promiscuous; } ;


 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int veth_frame_wanted(struct veth_port *port, u64 mac_addr)
{
 int wanted = 0;
 int i;
 unsigned long flags;

 if ( (mac_addr == port->mac_addr) || (mac_addr == 0xffffffffffff0000) )
  return 1;

 read_lock_irqsave(&port->mcast_gate, flags);

 if (port->promiscuous) {
  wanted = 1;
  goto out;
 }

 for (i = 0; i < port->num_mcast; ++i) {
  if (port->mcast_addr[i] == mac_addr) {
   wanted = 1;
   break;
  }
 }

 out:
 read_unlock_irqrestore(&port->mcast_gate, flags);

 return wanted;
}
