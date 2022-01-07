
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct cycx_device {int dummy; } ;
typedef int d ;


 int X25_DISCONNECT_RESPONSE ;
 int memset (char*,int ,int) ;
 int x25_exec (struct cycx_device*,int ,char,char**,int,int *,int ) ;

__attribute__((used)) static int cycx_x25_disconnect_response(struct cycx_device *card, u8 link,
     u8 lcn)
{
 char d[5];

 memset(d, 0, sizeof(d));
 d[0] = d[3] = lcn;
 d[2] = 0x10;
 d[4] = 0x17;

 return x25_exec(card, X25_DISCONNECT_RESPONSE, link, &d, 5, ((void*)0), 0);
}
