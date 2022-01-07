
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct adapter {int mbox; } ;


 scalar_t__ A_SGE_CTXT_CMD ;
 struct adapter* netdev2adap (struct net_device*) ;
 int t4_fwaddrspace_write (struct adapter*,int ,scalar_t__,int) ;

int cxgb4_flush_eq_cache(struct net_device *dev)
{
 struct adapter *adap = netdev2adap(dev);
 int ret;

 ret = t4_fwaddrspace_write(adap, adap->mbox,
       0xe1000000 + A_SGE_CTXT_CMD, 0x20000000);
 return ret;
}
