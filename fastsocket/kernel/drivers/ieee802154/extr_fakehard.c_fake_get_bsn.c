
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {scalar_t__ type; } ;


 scalar_t__ ARPHRD_IEEE802154 ;
 int BUG_ON (int) ;

__attribute__((used)) static u8 fake_get_bsn(struct net_device *dev)
{
 BUG_ON(dev->type != ARPHRD_IEEE802154);

 return 0x00;
}
