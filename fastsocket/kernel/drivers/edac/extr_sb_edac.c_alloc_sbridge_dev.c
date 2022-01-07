
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sbridge_dev {int n_devs; int list; int bus; void* pdev; } ;
struct pci_id_table {int n_devs; } ;


 int GFP_KERNEL ;
 int kfree (struct sbridge_dev*) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int sbridge_edac_list ;

__attribute__((used)) static struct sbridge_dev *alloc_sbridge_dev(u8 bus,
        const struct pci_id_table *table)
{
 struct sbridge_dev *sbridge_dev;

 sbridge_dev = kzalloc(sizeof(*sbridge_dev), GFP_KERNEL);
 if (!sbridge_dev)
  return ((void*)0);

 sbridge_dev->pdev = kzalloc(sizeof(*sbridge_dev->pdev) * table->n_devs,
       GFP_KERNEL);
 if (!sbridge_dev->pdev) {
  kfree(sbridge_dev);
  return ((void*)0);
 }

 sbridge_dev->bus = bus;
 sbridge_dev->n_devs = table->n_devs;
 list_add_tail(&sbridge_dev->list, &sbridge_edac_list);

 return sbridge_dev;
}
