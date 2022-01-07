
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adapter {TYPE_1__** port; } ;
struct TYPE_2__ {unsigned int mtu; } ;


 int A_TP_MTU_PORT_TABLE ;
 int t3_write_reg (struct adapter*,int ,unsigned int) ;

__attribute__((used)) static void init_port_mtus(struct adapter *adapter)
{
 unsigned int mtus = adapter->port[0]->mtu;

 if (adapter->port[1])
  mtus |= adapter->port[1]->mtu << 16;
 t3_write_reg(adapter, A_TP_MTU_PORT_TABLE, mtus);
}
