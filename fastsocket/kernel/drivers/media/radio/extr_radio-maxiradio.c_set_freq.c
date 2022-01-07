
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct maxiradio {int io; } ;


 int FREQ2BITS (int) ;
 int dprintk (struct maxiradio*,int,char*,int,int) ;
 int outbit (int,int) ;
 int turn_power (struct maxiradio*,int) ;

__attribute__((used)) static void set_freq(struct maxiradio *dev, u32 freq)
{
 unsigned long int si;
 int bl;
 int io = dev->io;
 int val = FREQ2BITS(freq);



 outbit(0, io);
 outbit(1, io);

 outbit(0, io);

 outbit(0, io);
 outbit(0, io);

 outbit(0, io);
 outbit(0, io);

 outbit(0, io);
 outbit(0, io);

 si = 0x8000;
 for (bl = 1; bl <= 16; bl++) {
  outbit(val & si, io);
  si >>= 1;
 }

 dprintk(dev, 1, "Radio freq set to %d.%02d MHz\n",
    freq / 16000,
    freq % 16000 * 100 / 16000);

 turn_power(dev, 1);
}
