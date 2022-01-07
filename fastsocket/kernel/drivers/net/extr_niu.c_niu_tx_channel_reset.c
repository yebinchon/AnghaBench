
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int TX_CS (int) ;
 int TX_CS_RST ;
 int TX_RING_KICK (int) ;
 int niu_tx_cs_reset_poll (struct niu*,int) ;
 int nr64 (int ) ;
 int nw64 (int ,int ) ;

__attribute__((used)) static int niu_tx_channel_reset(struct niu *np, int channel)
{
 u64 val = nr64(TX_CS(channel));
 int err;

 val |= TX_CS_RST;
 nw64(TX_CS(channel), val);

 err = niu_tx_cs_reset_poll(np, channel);
 if (!err)
  nw64(TX_RING_KICK(channel), 0);

 return err;
}
