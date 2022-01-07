
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ cpu_type; } ;


 unsigned long HEARTBEAT_2ND_RANGE_END ;
 unsigned long HEARTBEAT_2ND_RANGE_START ;
 unsigned long HEARTBEAT_LEN ;
 unsigned long HZ ;
 unsigned char LED4 ;
 unsigned char LED5 ;
 unsigned char LED6 ;
 unsigned char LED7 ;
 unsigned char LED_HEARTBEAT ;
 int LED_UPDATE_INTERVAL ;
 TYPE_1__ boot_cpu_data ;
 unsigned long jiffies ;
 unsigned char lastleds ;
 int led_diskio ;
 int led_func_ptr (unsigned char) ;
 unsigned char led_get_diskio_activity () ;
 unsigned char led_get_net_activity () ;
 int led_heartbeat ;
 int led_lanrxtx ;
 int led_task ;
 int led_wq ;
 scalar_t__ likely (int ) ;
 int oops_in_progress ;
 scalar_t__ pcxl2 ;
 int queue_delayed_work (int ,int *,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void led_work_func (struct work_struct *unused)
{
 static unsigned long last_jiffies;
 static unsigned long count_HZ;
 unsigned char currentleds = 0;


 if (!led_func_ptr)
     return;


 count_HZ += jiffies - last_jiffies;
 last_jiffies = jiffies;
 if (count_HZ >= HZ)
     count_HZ = 0;

 if (likely(led_heartbeat))
 {



  if (count_HZ < HEARTBEAT_LEN ||
    (count_HZ >= HEARTBEAT_2ND_RANGE_START &&
    count_HZ < HEARTBEAT_2ND_RANGE_END))
   currentleds |= LED_HEARTBEAT;
 }

 if (likely(led_lanrxtx)) currentleds |= led_get_net_activity();
 if (likely(led_diskio)) currentleds |= led_get_diskio_activity();


 if (unlikely(oops_in_progress)) {
  if (boot_cpu_data.cpu_type >= pcxl2) {


   currentleds = (count_HZ <= (HZ/2)) ? 0 : 0xff;
  } else {

   if (count_HZ <= (HZ/2))
    currentleds &= ~(LED4|LED5|LED6|LED7);
   else
    currentleds |= (LED4|LED5|LED6|LED7);
  }
 }

 if (currentleds != lastleds)
 {
  led_func_ptr(currentleds);
  lastleds = currentleds;
 }

 queue_delayed_work(led_wq, &led_task, LED_UPDATE_INTERVAL);
}
