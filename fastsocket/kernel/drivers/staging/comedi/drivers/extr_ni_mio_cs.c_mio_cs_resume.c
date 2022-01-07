
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int DPRINTK (char*) ;

__attribute__((used)) static int mio_cs_resume(struct pcmcia_device *link)
{
 DPRINTK("pm resume\n");
 return 0;
}
