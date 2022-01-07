
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTEGRATOR_SC_CTRL_nFLVPPEN ;
 unsigned long SC_CTRLC ;
 unsigned long SC_CTRLS ;
 int writel (int ,unsigned long) ;

__attribute__((used)) static void ap_flash_set_vpp(int on)
{
 unsigned long reg = on ? SC_CTRLS : SC_CTRLC;

 writel(INTEGRATOR_SC_CTRL_nFLVPPEN, reg);
}
