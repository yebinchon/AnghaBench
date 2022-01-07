
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scatterlist {int length; } ;
struct s3cmci_host {scalar_t__ pio_active; size_t pio_sgptr; TYPE_2__* mrq; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {size_t sg_len; struct scatterlist* sg; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ XFER_NONE ;
 int dbg (struct s3cmci_host*,int ,char*,size_t,size_t) ;
 int dbg_debug ;
 int dbg_sg ;
 int * sg_virt (struct scatterlist*) ;

__attribute__((used)) static inline int get_data_buffer(struct s3cmci_host *host,
      u32 *bytes, u32 **pointer)
{
 struct scatterlist *sg;

 if (host->pio_active == XFER_NONE)
  return -EINVAL;

 if ((!host->mrq) || (!host->mrq->data))
  return -EINVAL;

 if (host->pio_sgptr >= host->mrq->data->sg_len) {
  dbg(host, dbg_debug, "no more buffers (%i/%i)\n",
        host->pio_sgptr, host->mrq->data->sg_len);
  return -EBUSY;
 }
 sg = &host->mrq->data->sg[host->pio_sgptr];

 *bytes = sg->length;
 *pointer = sg_virt(sg);

 host->pio_sgptr++;

 dbg(host, dbg_sg, "new buffer (%i/%i)\n",
     host->pio_sgptr, host->mrq->data->sg_len);

 return 0;
}
