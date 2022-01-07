
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;


 int A_SGE_DBFIFO_STATUS ;
 unsigned int G_HP_COUNT (int ) ;
 unsigned int G_LP_COUNT (int ) ;
 struct adapter* netdev2adap (struct net_device const*) ;
 int t4_read_reg (struct adapter*,int ) ;

unsigned int cxgb4_dbfifo_count(const struct net_device *dev, int lpfifo)
{
 struct adapter *adap = netdev2adap(dev);
 u32 v;

 v = t4_read_reg(adap, A_SGE_DBFIFO_STATUS);
 return lpfifo ? G_LP_COUNT(v) : G_HP_COUNT(v);
}
