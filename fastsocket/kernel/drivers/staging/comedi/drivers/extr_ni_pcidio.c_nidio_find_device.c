
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mite_struct {TYPE_2__* pcidev; scalar_t__ used; struct mite_struct* next; } ;
struct comedi_device {TYPE_3__* board_ptr; } ;
struct TYPE_8__ {struct mite_struct* mite; } ;
struct TYPE_7__ {scalar_t__ dev_id; } ;
struct TYPE_6__ {int devfn; TYPE_1__* bus; } ;
struct TYPE_5__ {int number; } ;


 int EIO ;
 int PCI_SLOT (int ) ;
 TYPE_4__* devpriv ;
 scalar_t__ mite_device_id (struct mite_struct*) ;
 struct mite_struct* mite_devices ;
 int mite_list_devices () ;
 int n_nidio_boards ;
 TYPE_3__* nidio_boards ;
 int printk (char*) ;

__attribute__((used)) static int nidio_find_device(struct comedi_device *dev, int bus, int slot)
{
 struct mite_struct *mite;
 int i;

 for (mite = mite_devices; mite; mite = mite->next) {
  if (mite->used)
   continue;
  if (bus || slot) {
   if (bus != mite->pcidev->bus->number ||
       slot != PCI_SLOT(mite->pcidev->devfn))
    continue;
  }
  for (i = 0; i < n_nidio_boards; i++) {
   if (mite_device_id(mite) == nidio_boards[i].dev_id) {
    dev->board_ptr = nidio_boards + i;
    devpriv->mite = mite;

    return 0;
   }
  }
 }
 printk("no device found\n");
 mite_list_devices();
 return -EIO;
}
