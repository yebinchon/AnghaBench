
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i8254_struct {int* logic2phys; unsigned int* mode; int iobase; } ;


 void i8254_set_mode_low (int ,int,unsigned int) ;

__attribute__((used)) static void i8254_set_mode(struct i8254_struct *st, int channel,
      unsigned int mode)
{
 int chan = st->logic2phys[channel];

 st->mode[chan] = mode;
 return i8254_set_mode_low(st->iobase, chan, mode);
}
