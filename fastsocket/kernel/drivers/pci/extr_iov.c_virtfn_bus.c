
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_dev {int devfn; TYPE_2__* sriov; TYPE_1__* bus; } ;
struct TYPE_4__ {int offset; int stride; } ;
struct TYPE_3__ {scalar_t__ number; } ;



__attribute__((used)) static inline u8 virtfn_bus(struct pci_dev *dev, int id)
{
 return dev->bus->number + ((dev->devfn + dev->sriov->offset +
        dev->sriov->stride * id) >> 8);
}
