
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rio_mport {int dummy; } ;


 int rio_mport_read_config_32 (struct rio_mport*,int,int,int,int*) ;

__attribute__((used)) static int
tsi500_route_get_entry(struct rio_mport *mport, u16 destid, u8 hopcount, u16 table, u16 route_destid, u8 *route_port)
{
 int ret = 0;
 u32 offset = 0x10000 + 0xa00 + ((route_destid / 2)&~0x3);
 u32 result;

 if (table == 0xff)
  rio_mport_read_config_32(mport, destid, hopcount, offset, &result);
 else
  rio_mport_read_config_32(mport, destid, hopcount, offset + (0x20000*table), &result);

 result &= 0xf << (4*(route_destid & 0x7));
 *route_port = result >> (4*(route_destid & 0x7));
 if (*route_port > 3)
  ret = -1;

 return ret;
}
