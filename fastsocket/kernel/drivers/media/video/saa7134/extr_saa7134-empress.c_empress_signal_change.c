
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int empress_workqueue; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void empress_signal_change(struct saa7134_dev *dev)
{
 schedule_work(&dev->empress_workqueue);
}
