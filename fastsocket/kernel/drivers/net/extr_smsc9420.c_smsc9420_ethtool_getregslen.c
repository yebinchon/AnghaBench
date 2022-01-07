
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;



__attribute__((used)) static int smsc9420_ethtool_getregslen(struct net_device *dev)
{

 return 0x100 + (32 * sizeof(u32));
}
