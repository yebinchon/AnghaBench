
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* self; } ;
struct TYPE_3__ {scalar_t__ ari_enabled; } ;



__attribute__((used)) static int bnx2x_ari_enabled(struct pci_dev *dev)
{
 return dev->bus->self && dev->bus->self->ari_enabled;
}
