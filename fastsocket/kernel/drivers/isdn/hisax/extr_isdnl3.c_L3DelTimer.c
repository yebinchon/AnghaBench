
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct L3Timer {int tl; } ;


 int del_timer (int *) ;

void
L3DelTimer(struct L3Timer *t)
{
 del_timer(&t->tl);
}
