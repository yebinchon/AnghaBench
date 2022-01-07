
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct local_info_t* priv; } ;
struct local_info_t {scalar_t__ stop; } ;



__attribute__((used)) static int das08_pcmcia_resume(struct pcmcia_device *link)
{
 struct local_info_t *local = link->priv;

 local->stop = 0;
 return 0;
}
