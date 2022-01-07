
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int amb_dev ;


 int AMB_INTERRUPT_BITS ;
 int amb_mem ;
 int interrupt_control ;
 int offsetof (int ,int ) ;
 int rd_plain (int *,int ) ;
 int wr_plain (int *,int ,int) ;

__attribute__((used)) static void interrupts_off (amb_dev * dev) {
  wr_plain (dev, offsetof(amb_mem, interrupt_control),
     rd_plain (dev, offsetof(amb_mem, interrupt_control))
     &~ AMB_INTERRUPT_BITS);
}
