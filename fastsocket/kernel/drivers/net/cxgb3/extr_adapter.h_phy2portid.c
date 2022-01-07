
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {struct adapter* adapter; } ;
struct port_info {struct cphy phy; } ;
struct adapter {int dummy; } ;


 struct port_info* adap2pinfo (struct adapter*,int ) ;

__attribute__((used)) static inline int phy2portid(struct cphy *phy)
{
 struct adapter *adap = phy->adapter;
 struct port_info *port0 = adap2pinfo(adap, 0);

 return &port0->phy == phy ? 0 : 1;
}
