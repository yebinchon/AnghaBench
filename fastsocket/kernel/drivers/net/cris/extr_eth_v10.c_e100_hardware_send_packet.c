
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_local {int led_lock; } ;
struct TYPE_4__ {int sw_len; int ctrl; int buf; } ;
struct TYPE_5__ {TYPE_1__ descr; } ;


 int D (int ) ;
 int HZ ;
 int IO_STATE (int *,int ,int ) ;
 int NETWORK_ACTIVITY ;
 scalar_t__ NET_FLASH_TIME ;
 int * R_DMA_CH0_CMD ;
 int clear_led_timer ;
 int cmd ;
 int d_eol ;
 int d_eop ;
 int d_wait ;
 int e100_set_network_leds (int ) ;
 scalar_t__ jiffies ;
 int led_active ;
 scalar_t__ led_next_time ;
 int mod_timer (int *,scalar_t__) ;
 TYPE_2__* myLastTxDesc ;
 TYPE_2__* myNextTxDesc ;
 int printk (char*,char*,int) ;
 int restart ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int virt_to_phys (char*) ;

void
e100_hardware_send_packet(struct net_local *np, char *buf, int length)
{
 D(printk("e100 send pack, buf 0x%x len %d\n", buf, length));

 spin_lock(&np->led_lock);
 if (!led_active && time_after(jiffies, led_next_time)) {

  e100_set_network_leds(NETWORK_ACTIVITY);


  led_next_time = jiffies + NET_FLASH_TIME;
  led_active = 1;
  mod_timer(&clear_led_timer, jiffies + HZ/10);
 }
 spin_unlock(&np->led_lock);


 myNextTxDesc->descr.sw_len = length;
 myNextTxDesc->descr.ctrl = d_eop | d_eol | d_wait;
 myNextTxDesc->descr.buf = virt_to_phys(buf);


        myLastTxDesc->descr.ctrl &= ~d_eol;
        myLastTxDesc = myNextTxDesc;


 *R_DMA_CH0_CMD = IO_STATE(R_DMA_CH0_CMD, cmd, restart);
}
