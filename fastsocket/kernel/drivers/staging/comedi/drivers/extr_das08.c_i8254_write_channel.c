
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i8254_struct {int* logic2phys; int iobase; } ;


 int i8254_write_channel_low (int ,int,unsigned int) ;

__attribute__((used)) static void i8254_write_channel(struct i8254_struct *st, int channel,
    unsigned int value)
{
 int chan = st->logic2phys[channel];

 i8254_write_channel_low(st->iobase, chan, value);
}
