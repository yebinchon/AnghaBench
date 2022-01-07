
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HW_EVENT_VSYNC ;
 int IRQF_SHARED ;
 int maple_unsupported_device ;
 int maple_vblank_interrupt ;
 int request_irq (int ,int ,int ,char*,int *) ;

__attribute__((used)) static int maple_set_vblank_interrupt_handler(void)
{
 return request_irq(HW_EVENT_VSYNC, maple_vblank_interrupt,
  IRQF_SHARED, "maple bus VBLANK", &maple_unsupported_device);
}
