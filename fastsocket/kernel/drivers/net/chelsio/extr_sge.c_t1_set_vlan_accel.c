
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge {int sge_control; } ;
struct adapter {scalar_t__ regs; scalar_t__ open_device_map; struct sge* sge; } ;


 scalar_t__ A_SG_CONTROL ;
 int F_VLAN_XTRACT ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

void t1_set_vlan_accel(struct adapter *adapter, int on_off)
{
 struct sge *sge = adapter->sge;

 sge->sge_control &= ~F_VLAN_XTRACT;
 if (on_off)
  sge->sge_control |= F_VLAN_XTRACT;
 if (adapter->open_device_map) {
  writel(sge->sge_control, adapter->regs + A_SG_CONTROL);
  readl(adapter->regs + A_SG_CONTROL);
 }
}
