
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct adapter {int fn; } ;
struct TYPE_2__ {int viid; } ;


 struct adapter* netdev2adap (struct net_device*) ;
 TYPE_1__* netdev2pinfo (struct net_device*) ;
 int t4_identify_port (struct adapter*,int ,int ,int) ;

__attribute__((used)) static int identify_port(struct net_device *dev, u32 data)
{
 struct adapter *adap = netdev2adap(dev);

 if (data == 0)
  data = 2;

 return t4_identify_port(adap, adap->fn, netdev2pinfo(dev)->viid,
    data * 5);
}
