
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa_dma_desc {int ddadr; } ;
struct pxa_camera_dev {int channels; struct pxa_dma_desc** sg_tail; } ;
struct pxa_buffer {TYPE_1__* dmas; } ;
struct TYPE_2__ {int sglen; int sg_dma; struct pxa_dma_desc* sg_cpu; } ;


 int DDADR_STOP ;

__attribute__((used)) static void pxa_dma_add_tail_buf(struct pxa_camera_dev *pcdev,
     struct pxa_buffer *buf)
{
 int i;
 struct pxa_dma_desc *buf_last_desc;

 for (i = 0; i < pcdev->channels; i++) {
  buf_last_desc = buf->dmas[i].sg_cpu + buf->dmas[i].sglen;
  buf_last_desc->ddadr = DDADR_STOP;

  if (pcdev->sg_tail[i])

   pcdev->sg_tail[i]->ddadr = buf->dmas[i].sg_dma;


  pcdev->sg_tail[i] = buf_last_desc;
 }
}
