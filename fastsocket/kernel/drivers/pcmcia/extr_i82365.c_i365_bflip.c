
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;


 int i365_get (int ,int ) ;
 int i365_set (int ,int ,int ) ;

__attribute__((used)) static void i365_bflip(u_short sock, u_short reg, u_char mask, int b)
{
    u_char d = i365_get(sock, reg);
    if (b)
 d |= mask;
    else
 d &= ~mask;
    i365_set(sock, reg, d);
}
