
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plip_local {int dummy; } ;
struct net_local {int dummy; } ;
struct net_device {int dummy; } ;


 int OK ;

__attribute__((used)) static int
plip_none(struct net_device *dev, struct net_local *nl,
   struct plip_local *snd, struct plip_local *rcv)
{
 return OK;
}
