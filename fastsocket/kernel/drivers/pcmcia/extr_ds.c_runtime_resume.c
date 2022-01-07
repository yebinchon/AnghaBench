
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int sem; } ;


 int down (int *) ;
 int pcmcia_dev_resume (struct device*) ;
 int up (int *) ;

__attribute__((used)) static void runtime_resume(struct device *dev)
{
 int rc;

 down(&dev->sem);
 rc = pcmcia_dev_resume(dev);
 up(&dev->sem);
}
