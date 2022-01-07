
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int PC110PAD_ON ;
 int outb (int ,scalar_t__) ;
 scalar_t__ pc110pad_count ;
 int pc110pad_interrupt (int ,int *) ;
 scalar_t__ pc110pad_io ;

__attribute__((used)) static int pc110pad_open(struct input_dev *dev)
{
 pc110pad_interrupt(0, ((void*)0));
 pc110pad_interrupt(0, ((void*)0));
 pc110pad_interrupt(0, ((void*)0));
 outb(PC110PAD_ON, pc110pad_io + 2);
 pc110pad_count = 0;

 return 0;
}
