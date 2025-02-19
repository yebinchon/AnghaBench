
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si470x_device {int* registers; TYPE_1__* videodev; } ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 size_t POWERCFG ;
 int POWERCFG_SEEK ;
 int POWERCFG_SEEKUP ;
 int POWERCFG_SKMODE ;
 size_t STATUSRSSI ;
 int STATUSRSSI_SF ;
 int STATUSRSSI_STC ;
 int dev_warn (int *,char*,...) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int seek_timeout ;
 int si470x_get_register (struct si470x_device*,size_t) ;
 int si470x_set_register (struct si470x_device*,size_t) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int si470x_set_seek(struct si470x_device *radio,
  unsigned int wrap_around, unsigned int seek_upward)
{
 int retval = 0;
 unsigned long timeout;
 bool timed_out = 0;


 radio->registers[POWERCFG] |= POWERCFG_SEEK;
 if (wrap_around == 1)
  radio->registers[POWERCFG] &= ~POWERCFG_SKMODE;
 else
  radio->registers[POWERCFG] |= POWERCFG_SKMODE;
 if (seek_upward == 1)
  radio->registers[POWERCFG] |= POWERCFG_SEEKUP;
 else
  radio->registers[POWERCFG] &= ~POWERCFG_SEEKUP;
 retval = si470x_set_register(radio, POWERCFG);
 if (retval < 0)
  goto done;


 timeout = jiffies + msecs_to_jiffies(seek_timeout);
 do {
  retval = si470x_get_register(radio, STATUSRSSI);
  if (retval < 0)
   goto stop;
  timed_out = time_after(jiffies, timeout);
 } while (((radio->registers[STATUSRSSI] & STATUSRSSI_STC) == 0) &&
  (!timed_out));
 if ((radio->registers[STATUSRSSI] & STATUSRSSI_STC) == 0)
  dev_warn(&radio->videodev->dev, "seek does not complete\n");
 if (radio->registers[STATUSRSSI] & STATUSRSSI_SF)
  dev_warn(&radio->videodev->dev,
   "seek failed / band limit reached\n");
 if (timed_out)
  dev_warn(&radio->videodev->dev,
   "seek timed out after %u ms\n", seek_timeout);

stop:

 radio->registers[POWERCFG] &= ~POWERCFG_SEEK;
 retval = si470x_set_register(radio, POWERCFG);

done:

 if ((retval == 0) && timed_out)
  retval = -EAGAIN;

 return retval;
}
