
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int cmm_cm4000_release (struct pcmcia_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void cm4000_release(struct pcmcia_device *link)
{
 cmm_cm4000_release(link);
 pcmcia_disable_device(link);
}
