
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int name; } ;


 int printk (char*,int ) ;

__attribute__((used)) static u32 TLan_HandleDummy( struct net_device *dev, u16 host_int )
{
 printk( "TLAN:  Test interrupt on %s.\n", dev->name );
 return 1;

}
