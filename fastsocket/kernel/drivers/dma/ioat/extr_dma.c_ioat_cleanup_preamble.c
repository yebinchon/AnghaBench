
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_chan_common {unsigned long last_completion; int timer; int state; } ;


 scalar_t__ COMPLETION_TIMEOUT ;
 int IOAT_COMPLETION_ACK ;
 int clear_bit (int ,int *) ;
 unsigned long ioat_get_current_completion (struct ioat_chan_common*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

bool ioat_cleanup_preamble(struct ioat_chan_common *chan,
      unsigned long *phys_complete)
{
 *phys_complete = ioat_get_current_completion(chan);
 if (*phys_complete == chan->last_completion)
  return 0;
 clear_bit(IOAT_COMPLETION_ACK, &chan->state);
 mod_timer(&chan->timer, jiffies + COMPLETION_TIMEOUT);

 return 1;
}
