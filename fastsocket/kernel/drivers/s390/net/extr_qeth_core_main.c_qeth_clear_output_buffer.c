
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_qdio_out_q {int card; int set_pci_flags_count; } ;
struct qeth_qdio_out_buffer {int state; scalar_t__ next_element_to_fill; TYPE_2__* buffer; scalar_t__* is_header; } ;
typedef enum qeth_qdio_buffer_states { ____Placeholder_qeth_qdio_buffer_states } qeth_qdio_buffer_states ;
struct TYPE_4__ {TYPE_1__* element; } ;
struct TYPE_3__ {int sflags; scalar_t__ eflags; int * addr; scalar_t__ length; } ;


 int QETH_MAX_BUFFER_ELEMENTS (int ) ;
 int QETH_QDIO_BUF_EMPTY ;
 int SBAL_SFLAGS0_PCI_REQ ;
 int atomic_dec (int *) ;
 int atomic_set (int *,int) ;
 int kmem_cache_free (int ,int *) ;
 int qeth_core_header_cache ;
 int qeth_release_skbs (struct qeth_qdio_out_buffer*) ;

__attribute__((used)) static void qeth_clear_output_buffer(struct qeth_qdio_out_q *queue,
  struct qeth_qdio_out_buffer *buf,
  enum qeth_qdio_buffer_states newbufstate)
{
 int i;


 if (buf->buffer->element[0].sflags & SBAL_SFLAGS0_PCI_REQ)
  atomic_dec(&queue->set_pci_flags_count);

 if (newbufstate == QETH_QDIO_BUF_EMPTY) {
  qeth_release_skbs(buf);
 }

 for (i = 0; i < QETH_MAX_BUFFER_ELEMENTS(queue->card); ++i) {
  if (buf->buffer->element[i].addr && buf->is_header[i])
   kmem_cache_free(qeth_core_header_cache,
    buf->buffer->element[i].addr);
  buf->is_header[i] = 0;
  buf->buffer->element[i].length = 0;
  buf->buffer->element[i].addr = ((void*)0);
  buf->buffer->element[i].eflags = 0;
  buf->buffer->element[i].sflags = 0;
 }
 buf->buffer->element[15].eflags = 0;
 buf->buffer->element[15].sflags = 0;
 buf->next_element_to_fill = 0;
 atomic_set(&buf->state, newbufstate);
}
