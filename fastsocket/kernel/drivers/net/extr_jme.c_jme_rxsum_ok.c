
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct jme_adapter {int dummy; } ;


 int RXWBFLAG_IPCS ;
 int RXWBFLAG_IPV4 ;
 int RXWBFLAG_MF ;
 int RXWBFLAG_TCPCS ;
 int RXWBFLAG_TCPON ;
 int RXWBFLAG_UDPCS ;
 int RXWBFLAG_UDPON ;
 int msg_rx_err (struct jme_adapter*,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
jme_rxsum_ok(struct jme_adapter *jme, u16 flags)
{
 if (!(flags & (RXWBFLAG_TCPON | RXWBFLAG_UDPON | RXWBFLAG_IPV4)))
  return 0;

 if (unlikely((flags & (RXWBFLAG_MF | RXWBFLAG_TCPON | RXWBFLAG_TCPCS))
   == RXWBFLAG_TCPON)) {
  if (flags & RXWBFLAG_IPV4)
   msg_rx_err(jme, "TCP Checksum error\n");
  return 0;
 }

 if (unlikely((flags & (RXWBFLAG_MF | RXWBFLAG_UDPON | RXWBFLAG_UDPCS))
   == RXWBFLAG_UDPON)) {
  if (flags & RXWBFLAG_IPV4)
   msg_rx_err(jme, "UDP Checksum error.\n");
  return 0;
 }

 if (unlikely((flags & (RXWBFLAG_IPV4 | RXWBFLAG_IPCS))
   == RXWBFLAG_IPV4)) {
  msg_rx_err(jme, "IPv4 Checksum error.\n");
  return 0;
 }

 return 1;
}
