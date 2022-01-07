
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct adapter {int dummy; } ;


 unsigned int HPZ0 (unsigned int const) ;
 unsigned int HPZ1 (unsigned int const) ;
 unsigned int HPZ2 (unsigned int const) ;
 unsigned int HPZ3 (unsigned int const) ;
 int ULP_RX_ISCSI_PSZ ;
 int ULP_RX_ISCSI_TAGMASK ;
 struct adapter* netdev2adap (struct net_device*) ;
 int t4_write_reg (struct adapter*,int ,unsigned int) ;

void cxgb4_iscsi_init(struct net_device *dev, unsigned int tag_mask,
        const unsigned int *pgsz_order)
{
 struct adapter *adap = netdev2adap(dev);

 t4_write_reg(adap, ULP_RX_ISCSI_TAGMASK, tag_mask);
 t4_write_reg(adap, ULP_RX_ISCSI_PSZ, HPZ0(pgsz_order[0]) |
       HPZ1(pgsz_order[1]) | HPZ2(pgsz_order[2]) |
       HPZ3(pgsz_order[3]));
}
