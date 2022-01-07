
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i8254_struct {int * mode; int iobase; } ;


 int i8254_set_mode_low (int ,int,int ) ;

__attribute__((used)) static void i8254_initialize(struct i8254_struct *st)
{
 int i;
 for (i = 0; i < 3; ++i)
  i8254_set_mode_low(st->iobase, i, st->mode[i]);
}
