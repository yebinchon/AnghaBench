
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si470x_device {unsigned short* registers; TYPE_1__* videodev; } ;
struct TYPE_2__ {int dev; } ;


 size_t CHANNEL ;
 unsigned short CHANNEL_CHAN ;
 unsigned short CHANNEL_TUNE ;
 size_t STATUSRSSI ;
 int STATUSRSSI_STC ;
 int dev_warn (int *,char*,...) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int si470x_get_register (struct si470x_device*,size_t) ;
 int si470x_set_register (struct si470x_device*,size_t) ;
 int time_after (unsigned long,unsigned long) ;
 int tune_timeout ;

__attribute__((used)) static int si470x_set_chan(struct si470x_device *radio, unsigned short chan)
{
 int retval;
 unsigned long timeout;
 bool timed_out = 0;


 radio->registers[CHANNEL] &= ~CHANNEL_CHAN;
 radio->registers[CHANNEL] |= CHANNEL_TUNE | chan;
 retval = si470x_set_register(radio, CHANNEL);
 if (retval < 0)
  goto done;


 timeout = jiffies + msecs_to_jiffies(tune_timeout);
 do {
  retval = si470x_get_register(radio, STATUSRSSI);
  if (retval < 0)
   goto stop;
  timed_out = time_after(jiffies, timeout);
 } while (((radio->registers[STATUSRSSI] & STATUSRSSI_STC) == 0) &&
  (!timed_out));
 if ((radio->registers[STATUSRSSI] & STATUSRSSI_STC) == 0)
  dev_warn(&radio->videodev->dev, "tune does not complete\n");
 if (timed_out)
  dev_warn(&radio->videodev->dev,
   "tune timed out after %u ms\n", tune_timeout);

stop:

 radio->registers[CHANNEL] &= ~CHANNEL_TUNE;
 retval = si470x_set_register(radio, CHANNEL);

done:
 return retval;
}
