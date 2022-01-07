
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct controller {int poll_timer; } ;


 int init_timer (int *) ;
 int pcie_isr (int ,struct controller*) ;
 int pciehp_poll_time ;
 int start_int_poll_timer (struct controller*,int) ;

__attribute__((used)) static void int_poll_timeout(unsigned long data)
{
 struct controller *ctrl = (struct controller *)data;


 pcie_isr(0, ctrl);

 init_timer(&ctrl->poll_timer);
 if (!pciehp_poll_time)
  pciehp_poll_time = 2;

 start_int_poll_timer(ctrl, pciehp_poll_time);
}
