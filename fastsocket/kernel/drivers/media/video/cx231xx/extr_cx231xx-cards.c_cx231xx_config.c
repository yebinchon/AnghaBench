
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int mute; int volume; } ;



int cx231xx_config(struct cx231xx *dev)
{

 dev->mute = 1;
 dev->volume = 0x1f;

 return 0;
}
