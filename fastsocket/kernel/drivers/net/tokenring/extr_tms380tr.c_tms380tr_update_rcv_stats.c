
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int rx_bytes; int multicast; int rx_packets; } ;
struct net_local {TYPE_1__ MacStat; } ;


 unsigned char GROUP_BIT ;

__attribute__((used)) static void tms380tr_update_rcv_stats(struct net_local *tp, unsigned char DataPtr[],
     unsigned int Length)
{
 tp->MacStat.rx_packets++;
 tp->MacStat.rx_bytes += Length;


 if(DataPtr[2] & GROUP_BIT)
  tp->MacStat.multicast++;

 return;
}
