
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aztech {unsigned long curfreq; int lock; int io; int curvol; scalar_t__ stereo; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb_p (scalar_t__,int ) ;
 int radio_wait_time ;
 int send_0_byte (struct aztech*) ;
 int send_1_byte (struct aztech*) ;
 int udelay (int ) ;
 scalar_t__ volconvert (int ) ;

__attribute__((used)) static int az_setfreq(struct aztech *az, unsigned long frequency)
{
 int i;

 mutex_lock(&az->lock);

 az->curfreq = frequency;
 frequency += 171200;
 frequency /= 800;

 send_0_byte(az);

 for (i = 0; i < 13; i++)
  if (frequency & (1 << i))
   send_1_byte(az);
  else
   send_0_byte(az);

 send_0_byte(az);
 send_0_byte(az);
 send_0_byte(az);
 if (az->stereo)
  send_1_byte(az);
 else
  send_0_byte(az);

 send_1_byte(az);
 send_0_byte(az);
 send_0_byte(az);
 send_1_byte(az);
 send_0_byte(az);
 send_1_byte(az);



 udelay(radio_wait_time);
 outb_p(128 + 64 + volconvert(az->curvol), az->io);

 mutex_unlock(&az->lock);

 return 0;
}
