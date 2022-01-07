
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;


 int TLAN_RECORD ;
 int TLan_ReadAndClearStats (struct net_device*,int ) ;

__attribute__((used)) static u32 TLan_HandleStatOverflow( struct net_device *dev, u16 host_int )
{
 TLan_ReadAndClearStats( dev, TLAN_RECORD );

 return 1;

}
