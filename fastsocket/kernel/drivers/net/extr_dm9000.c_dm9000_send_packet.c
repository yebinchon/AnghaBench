
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int ip_summed; } ;
typedef TYPE_1__ board_info_t ;


 int CHECKSUM_NONE ;
 int DM9000_TCCR ;
 int DM9000_TCR ;
 int DM9000_TXPLH ;
 int DM9000_TXPLL ;
 int TCCR_IP ;
 int TCCR_TCP ;
 int TCCR_UDP ;
 int TCR_TXREQ ;
 int iow (TYPE_1__*,int ,int) ;
 TYPE_1__* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static void dm9000_send_packet(struct net_device *dev,
          int ip_summed,
          u16 pkt_len)
{
 board_info_t *dm = to_dm9000_board(dev);


 if (dm->ip_summed != ip_summed) {
  if (ip_summed == CHECKSUM_NONE)
   iow(dm, DM9000_TCCR, 0);
  else
   iow(dm, DM9000_TCCR, TCCR_IP | TCCR_UDP | TCCR_TCP);
  dm->ip_summed = ip_summed;
 }


 iow(dm, DM9000_TXPLL, pkt_len);
 iow(dm, DM9000_TXPLH, pkt_len >> 8);


 iow(dm, DM9000_TCR, TCR_TXREQ);
}
