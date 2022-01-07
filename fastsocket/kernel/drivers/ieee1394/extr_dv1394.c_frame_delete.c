
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct frame {int descriptor_pool_dma; int descriptor_pool; int descriptor_pool_size; TYPE_2__* video; int header_pool_dma; int header_pool; } ;
struct TYPE_4__ {TYPE_1__* ohci; } ;
struct TYPE_3__ {int dev; } ;


 int PAGE_SIZE ;
 int kfree (struct frame*) ;
 int pci_free_consistent (int ,int ,int ,int ) ;

__attribute__((used)) static void frame_delete(struct frame *f)
{
 pci_free_consistent(f->video->ohci->dev, PAGE_SIZE, f->header_pool, f->header_pool_dma);
 pci_free_consistent(f->video->ohci->dev, f->descriptor_pool_size, f->descriptor_pool, f->descriptor_pool_dma);
 kfree(f);
}
