
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ thread; int stopped; } ;
struct saa7134_dev {TYPE_1__ thread; } ;


 int SAA7134_ANALOG_IO_SELECT ;
 int kthread_stop (scalar_t__) ;
 int saa_andorb (int ,int,int) ;

int saa7134_tvaudio_fini(struct saa7134_dev *dev)
{

 if (dev->thread.thread && !dev->thread.stopped)
  kthread_stop(dev->thread.thread);

 saa_andorb(SAA7134_ANALOG_IO_SELECT, 0x07, 0x00);
 return 0;
}
