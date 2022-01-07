
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct lanai_buffer {int * ptr; int * end; int * start; int dmaaddr; } ;


 int lanai_buf_size (struct lanai_buffer*) ;
 int pci_free_consistent (struct pci_dev*,int ,int *,int ) ;

__attribute__((used)) static void lanai_buf_deallocate(struct lanai_buffer *buf,
 struct pci_dev *pci)
{
 if (buf->start != ((void*)0)) {
  pci_free_consistent(pci, lanai_buf_size(buf),
      buf->start, buf->dmaaddr);
  buf->start = buf->end = buf->ptr = ((void*)0);
 }
}
