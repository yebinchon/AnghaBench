
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct local_info_t* priv; } ;
struct local_info_t {int stop; } ;



__attribute__((used)) static int labpc_cs_suspend(struct pcmcia_device *link)
{
 struct local_info_t *local = link->priv;


 local->stop = 1;
 return 0;
}
