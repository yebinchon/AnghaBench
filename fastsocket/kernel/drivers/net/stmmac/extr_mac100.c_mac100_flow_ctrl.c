
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAC_FLOW_CTRL ;
 unsigned int MAC_FLOW_CTRL_ENABLE ;
 unsigned int MAC_FLOW_CTRL_PT_SHIFT ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void mac100_flow_ctrl(unsigned long ioaddr, unsigned int duplex,
        unsigned int fc, unsigned int pause_time)
{
 unsigned int flow = MAC_FLOW_CTRL_ENABLE;

 if (duplex)
  flow |= (pause_time << MAC_FLOW_CTRL_PT_SHIFT);
 writel(flow, ioaddr + MAC_FLOW_CTRL);

 return;
}
