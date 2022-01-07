
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i8254_struct {int* logic2phys; int iobase; } ;


 unsigned int i8254_read_status_low (int ,int) ;

__attribute__((used)) static unsigned int i8254_read_status(struct i8254_struct *st, int channel)
{
 int chan = st->logic2phys[channel];

 return i8254_read_status_low(st->iobase, chan);
}
