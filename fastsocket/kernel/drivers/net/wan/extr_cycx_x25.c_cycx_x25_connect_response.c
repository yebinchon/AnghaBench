
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cycx_x25_channel {int lcn; int link; } ;
struct cycx_device {int dummy; } ;
typedef int d ;


 int X25_CONNECT_RESPONSE ;
 int memset (int*,int ,int) ;
 int x25_exec (struct cycx_device*,int ,int ,int**,int,int *,int ) ;

__attribute__((used)) static int cycx_x25_connect_response(struct cycx_device *card,
         struct cycx_x25_channel *chan)
{
 u8 d[8];

 memset(d, 0, sizeof(d));
 d[0] = d[3] = chan->lcn;
 d[2] = 0x10;
 d[4] = 0x0F;
 d[7] = 0xCC;

 return x25_exec(card, X25_CONNECT_RESPONSE, chan->link, &d, 8, ((void*)0), 0);
}
