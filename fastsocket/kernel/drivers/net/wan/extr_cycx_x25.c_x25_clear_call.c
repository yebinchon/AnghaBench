
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cycx_device {int dummy; } ;
typedef int d ;


 int X25_DISCONNECT_REQUEST ;
 int memset (int*,int ,int) ;
 int x25_exec (struct cycx_device*,int ,int,int*,int,int *,int ) ;

__attribute__((used)) static int x25_clear_call(struct cycx_device *card, u8 link, u8 lcn, u8 cause,
     u8 diagn)
{
 u8 d[7];

 memset(d, 0, sizeof(d));
 d[0] = d[3] = lcn;
 d[2] = 0x10;
 d[4] = 0x13;
 d[5] = cause;
 d[6] = diagn;

 return x25_exec(card, X25_DISCONNECT_REQUEST, link, d, 7, ((void*)0), 0);
}
