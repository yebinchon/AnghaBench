
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ priv; scalar_t__ dev_node; } ;
struct local_info_t {int stop; } ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int kfree (scalar_t__) ;
 int labpc_release (struct pcmcia_device*) ;

__attribute__((used)) static void labpc_cs_detach(struct pcmcia_device *link)
{
 DEBUG(0, "labpc_cs_detach(0x%p)\n", link);







 if (link->dev_node) {
  ((struct local_info_t *)link->priv)->stop = 1;
  labpc_release(link);
 }


 if (link->priv)
  kfree(link->priv);

}
