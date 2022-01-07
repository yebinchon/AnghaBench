
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int DEBUG (int,char*) ;

__attribute__((used)) static int pcmciamtd_suspend(struct pcmcia_device *dev)
{
 DEBUG(2, "EVENT_PM_RESUME");



 return 0;
}
