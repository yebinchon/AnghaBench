
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct tifm_dev {TYPE_1__ dev; } ;
struct scatterlist {int dummy; } ;


 int pci_unmap_sg (int ,struct scatterlist*,int,int) ;
 int to_pci_dev (int ) ;

void tifm_unmap_sg(struct tifm_dev *sock, struct scatterlist *sg, int nents,
     int direction)
{
 pci_unmap_sg(to_pci_dev(sock->dev.parent), sg, nents, direction);
}
