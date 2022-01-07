
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int sem; } ;


 int PMSG_SUSPEND ;
 int down (int *) ;
 int pcmcia_dev_suspend (struct device*,int ) ;
 int up (int *) ;

__attribute__((used)) static int runtime_suspend(struct device *dev)
{
 int rc;

 down(&dev->sem);
 rc = pcmcia_dev_suspend(dev, PMSG_SUSPEND);
 up(&dev->sem);
 return rc;
}
