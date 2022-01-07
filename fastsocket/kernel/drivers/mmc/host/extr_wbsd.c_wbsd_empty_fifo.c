
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wbsd_host {scalar_t__ num_sg; int offset; scalar_t__ remain; int fifo_tasklet; scalar_t__ base; TYPE_2__* mrq; } ;
struct mmc_data {int bytes_xfered; int blocks; int blksz; } ;
struct TYPE_4__ {TYPE_1__* cmd; } ;
struct TYPE_3__ {struct mmc_data* data; } ;


 scalar_t__ WBSD_DFR ;
 int WBSD_FIFO_EMPTY ;
 int WBSD_FIFO_FULL ;
 int WBSD_FIFO_FUTHRE ;
 scalar_t__ WBSD_FSR ;
 void* inb (scalar_t__) ;
 int tasklet_schedule (int *) ;
 int wbsd_next_sg (struct wbsd_host*) ;
 char* wbsd_sg_to_buffer (struct wbsd_host*) ;

__attribute__((used)) static void wbsd_empty_fifo(struct wbsd_host *host)
{
 struct mmc_data *data = host->mrq->cmd->data;
 char *buffer;
 int i, fsr, fifo;




 if (host->num_sg == 0)
  return;

 buffer = wbsd_sg_to_buffer(host) + host->offset;





 while (!((fsr = inb(host->base + WBSD_FSR)) & WBSD_FIFO_EMPTY)) {




  if (fsr & WBSD_FIFO_FULL)
   fifo = 16;
  else if (fsr & WBSD_FIFO_FUTHRE)
   fifo = 8;
  else
   fifo = 1;

  for (i = 0; i < fifo; i++) {
   *buffer = inb(host->base + WBSD_DFR);
   buffer++;
   host->offset++;
   host->remain--;

   data->bytes_xfered++;




   if (host->remain == 0) {



    if (!wbsd_next_sg(host))
     return;

    buffer = wbsd_sg_to_buffer(host);
   }
  }
 }






 if ((data->blocks * data->blksz - data->bytes_xfered) < 16)
  tasklet_schedule(&host->fifo_tasklet);
}
