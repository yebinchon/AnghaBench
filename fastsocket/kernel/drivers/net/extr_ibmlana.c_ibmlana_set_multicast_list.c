
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int InitBoard (struct net_device*) ;
 int StopSONIC (struct net_device*) ;

__attribute__((used)) static void ibmlana_set_multicast_list(struct net_device *dev)
{

 StopSONIC(dev);

 InitBoard(dev);
}
