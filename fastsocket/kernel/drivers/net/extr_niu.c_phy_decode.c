
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PORT_TYPE_MASK ;

__attribute__((used)) static u32 phy_decode(u32 val, int port)
{
 return (val >> (port * 2)) & PORT_TYPE_MASK;
}
