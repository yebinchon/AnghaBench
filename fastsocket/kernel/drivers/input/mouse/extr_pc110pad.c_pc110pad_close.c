
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int PC110PAD_OFF ;
 int outb (int ,scalar_t__) ;
 scalar_t__ pc110pad_io ;

__attribute__((used)) static void pc110pad_close(struct input_dev *dev)
{
 outb(PC110PAD_OFF, pc110pad_io + 2);
}
