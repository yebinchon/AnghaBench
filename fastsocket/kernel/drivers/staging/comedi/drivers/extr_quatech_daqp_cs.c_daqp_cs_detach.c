
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ dev_node; struct local_info_t* priv; } ;
struct local_info_t {int stop; size_t table_index; } ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int daqp_cs_release (struct pcmcia_device*) ;
 int ** dev_table ;
 int kfree (struct local_info_t*) ;

__attribute__((used)) static void daqp_cs_detach(struct pcmcia_device *link)
{
 struct local_info_t *dev = link->priv;

 DEBUG(0, "daqp_cs_detach(0x%p)\n", link);

 if (link->dev_node) {
  dev->stop = 1;
  daqp_cs_release(link);
 }


 dev_table[dev->table_index] = ((void*)0);
 if (dev)
  kfree(dev);

}
