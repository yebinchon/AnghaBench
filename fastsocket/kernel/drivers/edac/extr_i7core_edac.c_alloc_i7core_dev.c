
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_id_table {int n_devs; } ;
struct i7core_dev {int n_devs; int list; int socket; void* pdev; } ;


 int GFP_KERNEL ;
 int i7core_edac_list ;
 int kfree (struct i7core_dev*) ;
 void* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct i7core_dev *alloc_i7core_dev(u8 socket,
        const struct pci_id_table *table)
{
 struct i7core_dev *i7core_dev;

 i7core_dev = kzalloc(sizeof(*i7core_dev), GFP_KERNEL);
 if (!i7core_dev)
  return ((void*)0);

 i7core_dev->pdev = kzalloc(sizeof(*i7core_dev->pdev) * table->n_devs,
       GFP_KERNEL);
 if (!i7core_dev->pdev) {
  kfree(i7core_dev);
  return ((void*)0);
 }

 i7core_dev->socket = socket;
 i7core_dev->n_devs = table->n_devs;
 list_add_tail(&i7core_dev->list, &i7core_edac_list);

 return i7core_dev;
}
