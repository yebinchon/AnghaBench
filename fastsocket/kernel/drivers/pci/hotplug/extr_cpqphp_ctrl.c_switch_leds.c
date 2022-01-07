
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct controller {scalar_t__ hpc_reg; } ;


 int HZ ;
 scalar_t__ LED_CONTROL ;
 int long_delay (int) ;
 int set_SOGO (struct controller*) ;
 int wait_for_ctrl_irq (struct controller*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void switch_leds(struct controller *ctrl, const int num_of_slots,
   u32 *work_LED, const int direction)
{
 int loop;

 for (loop = 0; loop < num_of_slots; loop++) {
  if (direction)
   *work_LED = *work_LED >> 1;
  else
   *work_LED = *work_LED << 1;
  writel(*work_LED, ctrl->hpc_reg + LED_CONTROL);

  set_SOGO(ctrl);


  wait_for_ctrl_irq(ctrl);


  long_delay((2*HZ)/10);
 }
}
