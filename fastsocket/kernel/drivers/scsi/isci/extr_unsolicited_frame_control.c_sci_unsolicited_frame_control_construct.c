
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int physical_address; int * array; } ;
struct TYPE_5__ {int physical_address; int* array; } ;
struct TYPE_4__ {struct sci_unsolicited_frame* array; } ;
struct sci_unsolicited_frame_control {TYPE_3__ headers; TYPE_2__ address_table; TYPE_1__ buffers; scalar_t__ get; } ;
struct sci_unsolicited_frame {int state; int * header; void* buffer; } ;
struct isci_host {int ufi_dma; void* ufi_buf; struct sci_unsolicited_frame_control uf_control; } ;
typedef int dma_addr_t ;


 int SCI_UFI_BUF_SIZE ;
 int SCI_UFI_HDR_SIZE ;
 int SCU_MAX_UNSOLICITED_FRAMES ;
 int SCU_UNSOLICITED_FRAME_BUFFER_SIZE ;
 int UNSOLICITED_FRAME_EMPTY ;

void sci_unsolicited_frame_control_construct(struct isci_host *ihost)
{
 struct sci_unsolicited_frame_control *uf_control = &ihost->uf_control;
 struct sci_unsolicited_frame *uf;
 dma_addr_t dma = ihost->ufi_dma;
 void *virt = ihost->ufi_buf;
 int i;
 uf_control->headers.physical_address = dma + SCI_UFI_BUF_SIZE;
 uf_control->headers.array = virt + SCI_UFI_BUF_SIZE;
 uf_control->address_table.physical_address = dma + SCI_UFI_BUF_SIZE + SCI_UFI_HDR_SIZE;
 uf_control->address_table.array = virt + SCI_UFI_BUF_SIZE + SCI_UFI_HDR_SIZE;
 uf_control->get = 0;
 for (i = 0; i < SCU_MAX_UNSOLICITED_FRAMES; i++) {
  uf = &uf_control->buffers.array[i];

  uf_control->address_table.array[i] = dma;

  uf->buffer = virt;
  uf->header = &uf_control->headers.array[i];
  uf->state = UNSOLICITED_FRAME_EMPTY;






  virt += SCU_UNSOLICITED_FRAME_BUFFER_SIZE;
  dma += SCU_UNSOLICITED_FRAME_BUFFER_SIZE;
 }
}
