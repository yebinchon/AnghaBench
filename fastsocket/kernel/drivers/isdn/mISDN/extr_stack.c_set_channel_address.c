
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mISDNchannel {int addr; } ;



void
set_channel_address(struct mISDNchannel *ch, u_int sapi, u_int tei)
{
 ch->addr = sapi | (tei << 8);
}
