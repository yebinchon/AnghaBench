
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int const mode; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;







 int LATCH ;
 int PIT_CH0 ;
 int PIT_MODE ;
 int i8253_lock ;
 int outb (int,int ) ;
 int outb_p (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void init_pit_timer(enum clock_event_mode mode,
      struct clock_event_device *evt)
{
 spin_lock(&i8253_lock);

 switch(mode) {
 case 131:

  outb_p(0x34, PIT_MODE);
  outb_p(LATCH & 0xff , PIT_CH0);
  outb(LATCH >> 8 , PIT_CH0);
  break;

 case 129:
 case 128:
  if (evt->mode == 131 ||
      evt->mode == 132) {
   outb_p(0x30, PIT_MODE);
   outb_p(0, PIT_CH0);
   outb_p(0, PIT_CH0);
  }
  break;

 case 132:

  outb_p(0x38, PIT_MODE);
  break;

 case 130:

  break;
 }
 spin_unlock(&i8253_lock);
}
